# PowerShell profile

This is a custom profile for powershell, which works for both Windows ad Linux (which means no aliases)

## Description

This profile includes :
- Custom terminal font color
- Custom Linux-style prompt with red coloring if execution is elevated
- Proxy configuration
- Custom fuctions and variables (system architecture, OS familly, .Net version, external IP)
- Display Visual Studio logo when starting

To work on both Windows and linux require to rely only on **PowerShell Core cmdlets** or **.Net Core classes**,
avoid *nix **aliases** and respect case sensitivity!

## Installation
Place this profile in the path according to your platform and the scope it is intended to.

### Windows
- All users and all shells : %windir%\system32\WindowsPowerShell\v1.0\profile.ps1
- All users and Microsoft.PowerShell shell only : %windir%\system32\WindowsPowerShell\v1.0\ Microsoft.PowerShell_profile.ps1
- Current user and all shells : %UserProfile%\My Documents\WindowsPowerShell\profile.ps1
- Current user and Microsoft.PowerShell shell only : %UserProfile%\My Documents\WindowsPowerShell\Microsoft.PowerShell_profile.ps1
- Current user and VS Code integrated terminal : %UserProfile%\My Documents\WindowsPowerShell\Microsoft.VSCode_profile.ps1

### Linux
- All users : $PSHOME/profile.ps1
- Current user : ~/.config/powershell/profile.ps1
- Current user for VS Code integrated terminal : ~/.config/powershell/Microsoft.VSCode_profile.ps1

## Roadmap

1. Extended test for proxy configuration in Linux
2. Test with Hyper on both platform
2. Powershell installer for both Windows and Linux

## External resources
- https://github.com/scottmuc/poshfiles
- https://github.com/mikemaccana/powershell-profile
- http://www.powershellmagazine.com/2012/02/13/pimp-your-profile-2/
- https://www.zerrouki.com/powershell-profile-example/
- https://stackoverflow.com/questions/138144/what-s-in-your-powershell-profile-ps1-file