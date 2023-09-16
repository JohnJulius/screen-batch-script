# screen-batch-script
Change Resolution with a Batch Script
# Qres
https://www.majorgeeks.com/files/details/qres.html

# Commands
DIR – The ‘dir’ command is used to get all the directories, sub-directories, and files present in the current working directory.
CD – The ‘cd’ command is used to change the current working directory.
VER – The ‘ver’ command tells the version of the user’s Windows.
CLS – The ‘cls’ command is used to clear the screen of the command prompt.
ECHO – The ‘echo’ command is by default ‘on’ but if we turn it off by ‘echo off’ it turns off prompt till the time ‘echo on’ is passed.
@ – The ‘@’ if used before any command hides which command is running.
@ECHO OFF – This commands serves as the start point to any basic batch script as it hides the prompt with ‘echo off’ and hides ‘echo off’ command with ‘@’.
HELP – This command tells us all about the commands available in the cmd. It runs only if the cmd is run as an administrator.

# Data Types
Integers and Strings
'echo' is the language print statement

# Basics
To create a batch script:

1. Open a text editor, such as Notepad or Visual Studio Code.
2. Type your commands, starting with @echo off. This will prevent the commands from being displayed in the command prompt window when the batch script is run.
3. Add your other commands, each on a new line.
4. To comment out a line, add REM before the line. This will be ignored when the batch script is run.
5. Save the file with a .bat extension. For example, my_script.bat.
6. To run the batch script, double-click on the file.
Here is an example of a simple batch script:

```bash
@echo off

REM This is a comment.

REM Display a message to the user.
echo Hello, world!
```
REM Pause the batch script.
pause
To run this batch script, double-click on the my_script.bat file. The command prompt window will open and display the message "Hello, world!". Then, the batch script will pause, waiting for you to press a key to continue.

Once you have created a batch script, you can edit it at any time by opening it in a text editor and making changes. You can also save the batch script in a specific location, so that you can easily run it again in the future.

Batch scripts can be used to automate a wide variety of tasks, such as:

*Starting and stopping applications
*Copying and moving files
*Renaming files and folders
*Performing backups
*Running system commands
*And much more

Here is an example of a more complex batch script that renames files based on their creation date, deletes temporary files older than 30 days, and backs up data to a different drive each day:
```bash
REM Rename files based on creation date
for /f "delims=" %%f in ('dir /b /od:c') do (
  ren %%f %%~nf_%%~tc.
)

REM Delete temporary files older than 30 days
del /f /q "%temp%\*.tmp" /s /d-30

REM Back up data to a different drive each day
set backup_drive=D:
set backup_date=%date:~0,10%

xcopy /e "C:\MyData" "%backup_drive%\Backup\%backup_date%"
```
Create a scheduled task to run the batch script daily.