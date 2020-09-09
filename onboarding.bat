@ECHO OFF

echo Please Type your Username
set /p usern=
echo Please Type your Password
powershell -Command $pword = read-host "Enter password" -AsSecureString ; $BSTR=[System.Runtime.InteropServices.Marshal]::SecureStringToBSTR($pword) ; [System.Runtime.InteropServices.Marshal]::PtrToStringAuto($BSTR) > .tmp.txt & set /p password=<.tmp.txt & del .tmp.txt


echo|set/p=%password%|clip

echo Opening Outlook
"C:\Program Files\Microsoft Office\root\Office16\OUTLOOK.exe"

echo Password Correct? y/n
set /p pwcorrect=
IF "%pwcorrect%"=="n" (%0)

rem echo Share drive? y/n
rem set /p share=
rem IF "%share%"=="y" (
rem 	net use X: \\mecheng-fs.mit.edu\Share2\Share /user:%usern% %password% /persistent:yes
rem )

echo Opening CrashPlan
"C:\Program Files\CrashPlan\electron\CrashPlanDesktop.exe"

echo Opening CertAid
"C:\Program Files (x86)\CertAid-2.2.6\CertAid.exe"

echo Opening ca.mit.edu
"C:\Program Files\Mozilla Firefox\firefox.exe" ca.mit.edu

echo Opening Dropbox registration
"C:\Program Files (x86)\Google\Chrome\Application\chrome.exe" dropbox.mit.edu

echo Opening Dropbox app, check system tray
"C:\Program Files (x86)\Dropbox\Client\Dropbox.exe"

echo Opening Adobe request form
"C:\Program Files (x86)\Google\Chrome\Application\chrome.exe" ist.mit.edu/adobe/cc

echo Opening Print server
start \\me-print-1

