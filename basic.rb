chocolatey_package 'git' do
  package_name 'git'
  options '--params /GitAndUnixToolsOnPath /WindowsTerminal'
end

packages =  %w[Git-Credential-Manager-for-Windows putty visualstudiocode mremoteNG 7zip winmerge autohotkey conemu virtualbox vagrant python2 python3 docker-for-windows chrome firefox WindowsAzurePowershell dbeaver sysinternals]
packages.each do |pkg|
  chocolatey_package pkg
end

gems = %w[kitchen-pester kitchen-hyperv kitchen-dsc kitchen-azurerm azure-credentials pry pry-byebug pry-stack_explorer appbundle-updater]
gems.each do |gem|
  chef_gem gem do
    compile_time false if respond_to?(:compile_time)
  end
end

extensions = %w[ ms-vscode.PowerShell bbenoist.vagrant marcostazi.vs-code-vagrantfile msazurermtools.azurerm-vscode-tools Pendrica.Chef PeterJausovec.vscode-docker tariky.easy-snippet-maker GrapeCity.gc-excelviewer eamodio.gitlens secanis.jenkinsfile-support DavidAnson.vscode-markdownlint ms-python.python Shan.code-settings-sync]
extensions.each do |ext|
  execute "install vscode extension #{ext}" do
    command "code --install-extension #{ext}"
  end
end

powershell_script 'name' do
  code <<-EOH
  Install-PackageProvider -Name NuGet -MinimumVersion 2.8.5.201 -Force
  Disable-WindowsOptionalFeature -Online -FeatureName SMB1Protocol -NoRestart
  Add-WindowsCapability -Online -Name OpenSSH.Client~~~~0.0.1.0
  Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Hyper-V,Microsoft-Winodws-Subsystem-Linux -All -NoRestart
  EOH
end

modules = %w[ PSReadline Carbon psake posh-git ImportExcel posh-docker AWSPowerShell Plaster platyPS SHiPS Invoke-SqlCmd2 ]
modules.each do |mod|
  powershell_script "Install-Module #{mod} -Force" do
  end
end
