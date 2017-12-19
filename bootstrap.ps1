# Setup my execution policy for both the 64 bit and 32 bit shells
set-executionpolicy remotesigned

#---- TEMPORARY ---
Disable-UAC

start-job -runas32 {set-executionpolicy remotesigned} | receive-job -wait
# Install fixed version of ChefDK 
invoke-restmethod 'https://omnitruck.chef.io/install.ps1' | Invoke-Expression
install-project chefdk -verbose -version 1.1.16
# Install Chocolatey
invoke-expression ((new-object net.webclient).DownloadString('https://chocolatey.org/install.ps1'))
. { Invoke-WebRequest -UseBasicParsing http://boxstarter.org/bootstrapper.ps1 } | Invoke-Expression; get-boxstarter -Force
choco feature enable -n allowGlobalConfirmation
# Get a basic setup recipe
Invoke-RestMethod -UseBasicParsing 'https://gist.githubusercontent.com/jaywryan/d2207f41a3c3543f39045b9a0e489250/raw/e9d39ae43dcc7e18fb2a33aa02c7928e4f3c018f/basic.rb' | out-file -encoding ascii -filepath $env:TEMP/basic.rb
# We dont need any Windows 10 Apps
# Get-AppxPackage | Remove-AppxPackage 2>&1>$null
# Use Chef Apply to setup 
chef-apply c:/basic.rb
write-host "executed chef recipe c:/basic.rb"