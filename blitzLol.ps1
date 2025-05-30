$leagueProcessName = "LeagueClient"
$blitzProcessName = "Blitz"

# YOO HOO!!! YOU!!!! PUT YOUR PC NAME HERE!!!! ADJUST THE PATH TO IF THIS ISN'T ACCURATE!!!!

$blitzPath = "C:\Users\PUT YOUR PC NAME HERE\AppData\Local\Programs\Blitz\Blitz.exe"  # Adjust the rest of the path to your Blitz installation

function Is-LeagueRunning {
    return Get-Process -Name $leagueProcessName -ErrorAction SilentlyContinue
}

function Is-BlitzRunning {
    return Get-Process -Name $blitzProcessName -ErrorAction SilentlyContinue
}

while ($true) {
    Write-Host "Waiting for LeagueClient to start..."
    while (-not (Is-LeagueRunning)) {
        Start-Sleep -Seconds 5
    }

    Write-Host "League detected. Ensuring Blitz is not already running..."
    Get-Process -Name $blitzProcessName -ErrorAction SilentlyContinue | Stop-Process -Force

    Start-Sleep -Seconds 2

    Write-Host "Launching Blitz..."
    Start-Process -FilePath $blitzPath

    # Wait for any Blitz process with a visible window (MainWindowHandle != 0)
    $timeout = 30  # seconds
    $elapsed = 0
    $blitzProc = $null
    while ($elapsed -lt $timeout) {
        $blitzProcs = Get-Process | Where-Object { $_.ProcessName -like "Blitz*" }
        foreach ($proc in $blitzProcs) {
            Write-Host "Found process: $($proc.ProcessName) (Id: $($proc.Id)), MainWindowHandle: $($proc.MainWindowHandle)"
            if ($proc.MainWindowHandle -ne 0) {
                $blitzProc = $proc
                break
            }
        }
        if ($blitzProc) { break }
        Start-Sleep -Seconds 1
        $elapsed += 1
    }

    if ($blitzProc -and $blitzProc.MainWindowHandle -ne 0) {
        $sig = @'
        [DllImport("user32.dll")]
        public static extern bool SetForegroundWindow(IntPtr hWnd);
        [DllImport("user32.dll")]
        public static extern bool ShowWindow(IntPtr hWnd, int nCmdShow);
'@
        Add-Type -MemberDefinition $sig -Name "WinAPI" -Namespace "User32"
        [User32.WinAPI]::ShowWindow($blitzProc.MainWindowHandle, 9) | Out-Null
        [User32.WinAPI]::SetForegroundWindow($blitzProc.MainWindowHandle) | Out-Null
        Write-Host "Blitz window brought to foreground."
    } else {
        Write-Host "Warning: Could not bring Blitz to foreground (no visible window after waiting)."
    }

    Write-Host "Monitoring LeagueClient. Waiting for it to close..."
    while (Is-LeagueRunning) {
        Start-Sleep -Seconds 5
    }

    Write-Host "League closed. Terminating Blitz..."
    Get-Process -Name $blitzProcessName -ErrorAction SilentlyContinue | Stop-Process -Force
    
    Write-Host "Waiting 5 seconds before checking for League again..."
    Start-Sleep -Seconds 5
}
