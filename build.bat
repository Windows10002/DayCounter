@echo off
set "CSC=%WINDIR%\Microsoft.NET\Framework64\v4.0.30319\csc.exe"
if not exist "%CSC%" set "CSC=%WINDIR%\Microsoft.NET\Framework\v4.0.30319\csc.exe"
if not exist "%CSC%" (echo .NET Framework compiler not found. & exit /b 1)
"%CSC%" /nologo /target:winexe /out:DayCounter.exe /reference:System.Windows.Forms.dll /reference:System.Drawing.dll /reference:System.Xml.dll DayCounter.cs
exit /b %ERRORLEVEL%
