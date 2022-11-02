Set-Alias remotedesktop mstsc

function rm-rf($item) { Remove-Item $item -Recurse -Force }

function sudo {
	Start-Process cmd -Verb RunAs
}
# Chocolatey profile
$ChocolateyProfile = "$env:ChocolateyInstall\helpers\chocolateyProfile.psm1"
if (Test-Path($ChocolateyProfile)) {
  Import-Module "$ChocolateyProfile"
}

oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH/json.omp.json" | Invoke-Expression
Import-Module -Name Terminal-Icons

function Start-Fedora { vboxmanage startvm Fedora }
function Stop-Fedora { vboxmanage controlvm Fedora poweroff }
function List-VMs { vboxmanage list vms }

Set-Alias -Name startfedora -Value Start-Fedora
Set-Alias -Name stopfedora -Value Stop-Fedora
Set-Alias -Name listvms -Value List-VMs
Set-Alias -Name vi -Value nvim
Set-Alias -Name vit -Value nvim-qt
