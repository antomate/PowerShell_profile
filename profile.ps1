
<#
.SYNOPSIS
    This is a custom profile for powershell, which works for both Windows ad Linux.
.DESCRIPTION
    PowerShell profile to customize the terminal, the prompt, the proxy configuration,
    add some usefull variables and function, change the font color and proudly display VS logo!

    Tested on both Windows and Linux.
    
.NOTES
    Authored by http://antomate.run
#>

# Proxy configuration using cached credentials for auth
$proxy = [System.Net.WebRequest]::GetSystemWebProxy()
$proxy.Credentials = [System.Net.CredentialCache]::DefaultNetworkCredentials
[System.Net.WebRequest]::DefaultWebProxy = $proxy

# Custom functions and variables
$systemArch = [System.Runtime.InteropServices.RuntimeInformation]::OSArchitecture
$netVersion = [System.Runtime.InteropServices.RuntimeInformation]::FrameworkDescription
$oSfamilly = $([System.Runtime.InteropServices.RuntimeInformation]::OSDescription.Split(' '))[0]
function Get-ExternalIP {
    Write-Output (invoke-webrequest "https://api.ipify.org").Content
}
function prompt {
    Write-Host "[" -noNewLine
    # Display user@host in red if elevated or in green if not
    if ($(whoami) -like "root" -or $(whoami) -like "admin*") {
        Write-Host "$env:USER@$([System.Net.Dns]::GetHostName())" -ForegroundColor DarkRed -noNewLine
    }
    else {
        Write-Host "$env:USER@$([System.Net.Dns]::GetHostName())" -ForegroundColor DarkGreen -noNewLine
    }
    Write-Host "] " -noNewLine
    Write-Host $($(Get-Location).Path.replace($home, "~")) -noNewLine
    Write-Host $(if ($nestedpromptlevel -ge 1) { '>>' } else {'>'}) -noNewLine
    return " "
}

# Custom shell foreground/font color
$Shell = $Host.UI.RawUI
$Shell.ForegroundColor = "darkGray"

# Display some love
Write-host ""
Write-host '                        cODe        ' -ForegroundColor DarkMagenta
Write-host '                      cODECODEc     ' -ForegroundColor DarkMagenta
Write-host '                    cODECODECOD     ' -ForegroundColor DarkMagenta
Write-host '     CODE         cODECODECODEC     ' -ForegroundColor DarkMagenta
Write-host '     CODECO     cODECODEC ODECO     ' -ForegroundColor DarkMagenta
Write-host '     CODECODEcoDECODECO   DECOD     ' -ForegroundColor DarkMagenta
Write-host '     CO  dECODECODEc      ODECO     ' -ForegroundColor DarkMagenta
Write-host '     CO   dECODECOd       ECODE     ' -ForegroundColor DarkMagenta
Write-host '     CO dECODECODECOde    CODEC     ' -ForegroundColor DarkMagenta
Write-host '     CODECOD    ECODECODe CODEC     ' -ForegroundColor DarkMagenta
Write-host '     CODEc        ODECODECODECO     ' -ForegroundColor DarkMagenta
Write-host '                    CODECODECOD     ' -ForegroundColor DarkMagenta
Write-host '                      CODECODe      ' -ForegroundColor DarkMagenta
Write-host '                        CODe        ' -ForegroundColor DarkMagenta
Write-host ""
Write-host '          IN CODE WE TRUST          ' -ForegroundColor DarkMagenta
Write-host ""