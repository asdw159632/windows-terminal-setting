Import-Module posh-git
Import-Module oh-my-posh
Set-Theme Paradox

$loginpath=pwd
$sys32="C:\Windows\System32"
If($loginpath -like $sys32)
{
  cd ~
}

Set-Alias ll Get-ChildItem

function lsName{
	Get-ChildItem -Name
}
Remove-Item alias:\ls
Set-Alias ls lsName

function cdup{
	cd ..
}
Set-Alias sd cdup
