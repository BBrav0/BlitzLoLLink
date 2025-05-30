# Blitz LoL Link

If you're tired of Blitz lurking in the background running its ads and consuming resources, use this to ensure it's only open when league is open!

## Installation and Setup

### 1. **Download and Extract Files**
   - Download the repository
   - Add the vbs and ps1 files to a location of your choice (e.g., `C:\Scripts\`)

### 2. **Configure the PowerShell Script**
   - Open `blitzLol.ps1` in a text editor
   - Find the line that starts with `$blitzPath =`
   - Replace `PUT YOUR PC NAME HERE` with your Windows username
   - Verify the path to Blitz.exe is correct. The default path is:
     ```
     C:\Users\USERNAME\AppData\Local\Programs\Blitz\Blitz.exe
     ```
   - If your Blitz is installed in a different location, update the path accordingly

### 3. **Configure Blitz Settings**

<img src="https://private-user-images.githubusercontent.com/113952108/449415248-461817cc-acbb-4870-bfd4-d8de83a5eb1a.png?jwt=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJnaXRodWIuY29tIiwiYXVkIjoicmF3LmdpdGh1YnVzZXJjb250ZW50LmNvbSIsImtleSI6ImtleTUiLCJleHAiOjE3NDg2NDI3MTMsIm5iZiI6MTc0ODY0MjQxMywicGF0aCI6Ii8xMTM5NTIxMDgvNDQ5NDE1MjQ4LTQ2MTgxN2NjLWFjYmItNDg3MC1iZmQ0LWQ4ZGU4M2E1ZWIxYS5wbmc_WC1BbXotQWxnb3JpdGhtPUFXUzQtSE1BQy1TSEEyNTYmWC1BbXotQ3JlZGVudGlhbD1BS0lBVkNPRFlMU0E1M1BRSzRaQSUyRjIwMjUwNTMwJTJGdXMtZWFzdC0xJTJGczMlMkZhd3M0X3JlcXVlc3QmWC1BbXotRGF0ZT0yMDI1MDUzMFQyMjAwMTNaJlgtQW16LUV4cGlyZXM9MzAwJlgtQW16LVNpZ25hdHVyZT0yMmVlZjI4OTFkMTllYzdhNTIzYjdiODQ5MmI3MWIxYWE2OTY4YTMxYTYyMTMxOWUxODk0OWQwM2E4MGFmODQyJlgtQW16LVNpZ25lZEhlYWRlcnM9aG9zdCJ9.fc89qh3LID40sgddOMuB5F3-Me3NI4fOQW0fyPknhx4" alt="Blitz" width="300"/>

   - Open Blitz
   - Go to Settings (gear icon)
   - Under "General" settings:
     - Disable "Launch Blitz on Windows startup"
     - Disable "Keep Blitz running in the background"





### 4. **Create Task Scheduler Task**

<p align="left">
  <img src="https://private-user-images.githubusercontent.com/113952108/449415471-fc5489f7-34ae-4fd2-96ee-9f60fd8e43ea.png?jwt=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJnaXRodWIuY29tIiwiYXVkIjoicmF3LmdpdGh1YnVzZXJjb250ZW50LmNvbSIsImtleSI6ImtleTUiLCJleHAiOjE3NDg2NDI3MTMsIm5iZiI6MTc0ODY0MjQxMywicGF0aCI6Ii8xMTM5NTIxMDgvNDQ5NDE1NDcxLWZjNTQ4OWY3LTM0YWUtNGZkMi05NmVlLTlmNjBmZDhlNDNlYS5wbmc_WC1BbXotQWxnb3JpdGhtPUFXUzQtSE1BQy1TSEEyNTYmWC1BbXotQ3JlZGVudGlhbD1BS0lBVkNPRFlMU0E1M1BRSzRaQSUyRjIwMjUwNTMwJTJGdXMtZWFzdC0xJTJGczMlMkZhd3M0X3JlcXVlc3QmWC1BbXotRGF0ZT0yMDI1MDUzMFQyMjAwMTNaJlgtQW16LUV4cGlyZXM9MzAwJlgtQW16LVNpZ25hdHVyZT1kYzVjMDg2MjQyYWUwOTQ5OTVjNGZiMGVkZDIxNzliYzY3ZmViODlhY2ZmYjIyZWM2OTI1Njc0MzZkNGViZTZkJlgtQW16LVNpZ25lZEhlYWRlcnM9aG9zdCJ9.448rA7HqX6jg06rpI_1qLD8q2Eh1blNuDVl---SXnHs" alt="Actions" width="350"/>
  <img src="https://private-user-images.githubusercontent.com/113952108/449415791-597e10cd-cf40-4695-92d1-32fd240c46a1.png?jwt=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJnaXRodWIuY29tIiwiYXVkIjoicmF3LmdpdGh1YnVzZXJjb250ZW50LmNvbSIsImtleSI6ImtleTUiLCJleHAiOjE3NDg2NDI3MTMsIm5iZiI6MTc0ODY0MjQxMywicGF0aCI6Ii8xMTM5NTIxMDgvNDQ5NDE1NzkxLTU5N2UxMGNkLWNmNDAtNDY5NS05MmQxLTMyZmQyNDBjNDZhMS5wbmc_WC1BbXotQWxnb3JpdGhtPUFXUzQtSE1BQy1TSEEyNTYmWC1BbXotQ3JlZGVudGlhbD1BS0lBVkNPRFlMU0E1M1BRSzRaQSUyRjIwMjUwNTMwJTJGdXMtZWFzdC0xJTJGczMlMkZhd3M0X3JlcXVlc3QmWC1BbXotRGF0ZT0yMDI1MDUzMFQyMjAwMTNaJlgtQW16LUV4cGlyZXM9MzAwJlgtQW16LVNpZ25hdHVyZT02ZmQxY2NkOWQxYmEzMGVlN2Q1ZDhmNzQzZDhhNzhiMjJjZTdjMmVkNjI0YTBmNmVmY2M2ZDQxYmU5ZWQ1OGY1JlgtQW16LVNpZ25lZEhlYWRlcnM9aG9zdCJ9.QFEKfUetZzIKq-J_qQONy-EVqm2sEe94pbJG-EbM-Mg" alt="Triggers" width="350"/>
  <img src="https://private-user-images.githubusercontent.com/113952108/449415988-d095c756-31e3-4ead-ac8a-f25a2594f797.png?jwt=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJnaXRodWIuY29tIiwiYXVkIjoicmF3LmdpdGh1YnVzZXJjb250ZW50LmNvbSIsImtleSI6ImtleTUiLCJleHAiOjE3NDg2NDI3MTMsIm5iZiI6MTc0ODY0MjQxMywicGF0aCI6Ii8xMTM5NTIxMDgvNDQ5NDE1OTg4LWQwOTVjNzU2LTMxZTMtNGVhZC1hYzhhLWYyNWEyNTk0Zjc5Ny5wbmc_WC1BbXotQWxnb3JpdGhtPUFXUzQtSE1BQy1TSEEyNTYmWC1BbXotQ3JlZGVudGlhbD1BS0lBVkNPRFlMU0E1M1BRSzRaQSUyRjIwMjUwNTMwJTJGdXMtZWFzdC0xJTJGczMlMkZhd3M0X3JlcXVlc3QmWC1BbXotRGF0ZT0yMDI1MDUzMFQyMjAwMTNaJlgtQW16LUV4cGlyZXM9MzAwJlgtQW16LVNpZ25hdHVyZT04YjI4OWY1ZWJkMDEzMTlmYzVmYjM1MTA3Y2RhOWJkNDk2M2QwMDJkYmRkN2FhNTRhNWQ0MTYwZWE2MzUxOTAwJlgtQW16LVNpZ25lZEhlYWRlcnM9aG9zdCJ9.guyltyAkQ23w5nWD2te4wsQ6IOVafJueGyrzMxESbTE" alt="Actions2" width="350"/>
</p>



   - Open Task Scheduler (search for it in Windows Start menu)
   - Click "Create Task" in the right panel
   - Follow these steps:
     1. Name: "BlitzLoLLink" (or whatever you want)
     2. Description: "Automatically manages Blitz with League of Legends" (or whatever you want)
     3. Trigger: "At log on"
     4. Action: "Start a program"
     5. Program/script: "wscript.exe" and set the arguments to be the path of your vbs file
     6. Finish the wizard

### 5. **Configure Task Properties**
   - In Task Scheduler, find your newly created task
   - Right-click it and select "Properties"
   - Go to the "Settings" tab
   - Check "Run task as soon as possible after a scheduled start is missed"
   - Check "If the task is already running, then the following rule applies:"
   - Select "Do not start a new instance"
   - Click "OK" to save

### 6. **Test the Setup**
   - Restart your PC
   - Launch League of Legends
   - Blitz should automatically start
   - When you close League, Blitz should automatically close

## Troubleshooting

- If Blitz doesn't start automatically, verify the path in `blitzLol.ps1` is correct
- Make sure you have execution policy set to allow PowerShell scripts:
  - Open PowerShell as Administrator
  - Run: `Set-ExecutionPolicy RemoteSigned`
  - Type 'Y' to confirm

## How it Works

The script monitors for League of Legends and automatically:
- Starts Blitz when League launches
- Closes Blitz when League closes






