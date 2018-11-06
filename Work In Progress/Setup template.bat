@echo off
title Setup
echo Downloading setup files...
cd C:/
md SetupDownloads
cd SetupDownloads
:DownloadSetupFiles
bitsadmin /transfer SetupFiles /download /priority high (files url) C:/SetupDownloads/7z.exe || goto :FailedToRunBitsadmin
bitsadmin /transfer SetupFiles /download /priority high (files url) C:/SetupDownloads/(file name) || goto :FailedToRunBitsadmin
echo Files downloaded!
:Extract
echo Extracting setup files!
7z e (setup file name zip) || goto :ExtractFailed
:Install
(T & A code placeholder)
echo Installing!
(copy code placeholder) || goto :InstallFailed
(verify code placeholder)
(licence code placeholder)
:FailedToRunBitsadmin
echo Setup failed cause your computer is missing Bitsadmin.
echo Go to maltroncraft.weebly.com/bitsadmin and download it then put it in C:/SetupDownloads
exit 1
:ExtractFailed
echo Extracting setup files failed.
echo Retrying. If this message appears again contact us at maltroncraft@gmail.com with error code E-(project number) failed
goto :Extract
:InstallFailed
echo Install failed!
echo Contact us at maltroncraft@gmail.com with the error code C-(project number) failed
exit 1
:Complete
echo Install complete!
exit 0
