# Setup my execution policy for both the 64 bit and 32 bit shells
set-executionpolicy remotesigned
start-job -runas32 {set-executionpolicy remotesigned} | receive-job -wait
# Install fixed version of ChefDK 
invoke-restmethod 'https://omnitruck.chef.io/install.ps1' | Invoke-Expression
install-project chefdk -verbose -version 1.1.16
# Install Chocolatey
invoke-expression ((new-object net.webclient).DownloadString('https://chocolatey.org/install.ps1'))
choco feature enable -n allowGlobalConfirmation
# Get a basic setup recipe
Invoke-RestMethod -UseBasicParsing 'https://gist.githubusercontent.com/karstenmueller/0c2257684b8e6a44bac9526c52074e18/raw/a150048b7ffbfe202f90fdce446b8095b3e7858c/basic.rb' | out-file -encoding ascii -filepath c:/basic.rb
# We dont need any Windows 10 Apps
# Get-AppxPackage | Remove-AppxPackage 2>&1>$null
# Use Chef Apply to setup 
chef-apply c:/basic.rb
write-host "executed chef recipe c:/basic.rb"