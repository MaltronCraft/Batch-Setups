@echo off
title Setup
echo Downloading setup files...
cd C:/
md SetupDownloads
cd SetupDownloads
bitsadmin /transfer SetupFiles /download /priority high (files url) C:/SetupDownloads/(file name) || goto :FailedToRunBitsadmin
bitsadmin /transfer SetupFiles /download /priority high (files url) C:/SetupDownloads/(file name) || goto :FailedToRunBitsadmin
echo Files downloaded!
echo Installing!
(copy code placeholder)
(verify code placeholder)
(licence code placeholder)
(T & A code placeholder)
