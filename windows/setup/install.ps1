Set-ExecutionPolicy RemoteSigned
iex ((New-Object System.Net.WebClient).DownloadString('http://boxstarter.org/bootstrapper.ps1'))
get-boxstarter -Force
Install-BoxstarterPackage -PackageName boxstarter.txt -DisableReboots

