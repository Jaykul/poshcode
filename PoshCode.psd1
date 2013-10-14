@{

# Script module or binary module file associated with this manifest.
ModuleToProcess = 'Packaging.psm1'

# Version number of this module.
ModuleVersion = '4.0.0.2'

# ID used to uniquely identify the PoshCode module
GUID = '88c6579a-27b2-41c8-86c6-cd23acb791e9'

# Author of this module
Author = 'Joel "Jaykul" Bennett <Jaykul@HuddledMasses.org>'

# Company or vendor of this module
CompanyName = 'http://HuddledMasses.org'

# Copyright statement for this module
Copyright = 'Copyright (c) 2013 by Joel Bennett, all rights reserved.'

# Description of the functionality provided by this module
Description = 'PoshCode Module for PowerShell Module Packaging and Script Sharing'

# Minimum version of the Windows PowerShell engine required by this module
PowerShellVersion = '3.0'

# Name of the Windows PowerShell host required by this module
# PowerShellHostName = ''

# Minimum version of the Windows PowerShell host required by this module
# PowerShellHostVersion = ''

# Minimum version of the .NET Framework required by this module
DotNetFrameworkVersion = '4.0'

# Minimum version of the common language runtime (CLR) required by this module
CLRVersion = '4.0'

# Processor architecture (None, X86, Amd64) required by this module
ProcessorArchitecture = 'None'

# Modules that must be imported into the global environment prior to importing this module
#RequiredModules = @('PoshCode\Configuration.psm1', 'PoshCode\Installation.psm1', 'PoshCode\Scripts.psm1', 'PoshCode\InvokeWeb.psm1')

# Assemblies that must be loaded prior to importing this module
RequiredAssemblies = 'WindowsBase', 'PresentationFramework'

# Script files (.ps1) that are run in the caller's environment prior to importing this module.
# ScriptsToProcess = @()

# Type files (.ps1xml) to be loaded when importing this module
# TypesToProcess = @()

# Format files (.ps1xml) to be loaded when importing this module
FormatsToProcess = @('.\PoshCode.Search.ModuleInfo.format.ps1xml')

# Modules to import as nested modules of the module specified in RootModule/ModuleToProcess
# Note: We do not specify InvokeWeb -- Thatt should only be imported if the test in the Installation module fails
# Note: Bitbucket is for test only! remove it! 
NestedModules = @('.\Configuration.psm1', '.\ModuleInfo.psm1', '.\Installation.psm1', '.\Scripts.psm1','Repository.psm1','.\RepositoryGitHub.psm1',
                '.\RepositoryBitBucket.psm1') ## remove this one later

# Functions to export from this module
FunctionsToExport = 'Get-Module', 'Install-Module', 'Compress-Module', 'Update-Module','Get-ModuleManifest',
                    'Get-ConfigData', 'Set-ConfigData', # 'Test-ExecutionPolicy', 'Get-SpecialFolder',
                    'Get-PoshCode', 'Send-PoshCode','Find-Module'
                     

# Cmdlets to export from this module
# CmdletsToExport = '*'

# Variables to export from this module
# VariablesToExport = '*'

# Aliases to export from this module
AliasesToExport = '*'

# List of all modules packaged with this module.
ModuleList = @('Configuration', 'ModuleInfo', 'InvokeWeb', 'Installation', 'Packaging', 'Scripts','Repository','RepositoryGitHub','RepositoryBitbucket')

# List of all files packaged with this module
FileList = '.\package.psd1', '.\PoshCode.psd1', '.\Constants.ps1',
           '.\Configuration.psm1', '.\ModuleInfo.psm1', '.\InvokeWeb.psm1', 
           '.\Installation.psm1', '.\Packaging.psm1', '.\Scripts.psm1',
           '.\PoshCode.ini','.\Repository.psm1',
           ## search repos
           'RepositoryGitHub.psm1',
           'RepositoryBitBucket.psm1', ##remove this one later
           #Format Files
           '.\PoshCode.Search.ModuleInfo.format.ps1xml'
           

# Private data to pass to the module specified in RootModule/ModuleToProcess
# PrivateData = ''

# HelpInfo URI of this module
# HelpInfoURI = ''

# Default prefix for commands exported from this module. Override the default prefix using Import-Module -Prefix.
# DefaultCommandPrefix = ''

}
