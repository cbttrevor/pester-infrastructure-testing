# Is Pester installed locally?
Get-Module -ListAvailable -Name Pester

# Search for Pester on the PowerShell Gallery
Find-Module -Name Pester

# Install the Pester module from PowerShell Gallery (powershellgallery.com)
Install-Module -Name Pester -Scope CurrentUser -Force

# Explore the Pester module's exported commands
Get-Command -Module Pester
