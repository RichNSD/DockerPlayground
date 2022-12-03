# Meant to be run during a Docker Build process

$ConfirmPreference="None"
$ErrorView="CategoryView"
$ErrorActionPreference="Continue"
$VerbosePreference="Continue"
$WarningPreference="Continue"
$DebugPreference="Continue"






<# @{
	ItemType = "Directory"
	Path = "C:\"
	PassThru = $true
	Verbose = $true
	Force = $true
} #>



function Set-BuildDirs {
	[CmdletBinding()]
	param(
		[Parameter(Mandatory=$True,
				   Position=0,
				   ParameterSetName="Paths",
				   ValueFromPipeline=$True,
				   ValueFromPipelineByPropertyName=$True)]
		[ValidateNotNullorEmpty()]
		[Alias("P")]
		[string[]]$DirPath
	)
	
	begin {
		$admin = @{
			AdminDir = 		".\.admin"
			AdminDirs = @{
				Admin =		"$AdminDir"
				Scripts = 	"$AdminDir\scripts"
				Logs = 		"$AdminDir\logs"
			}
			AdminScripts = @{
				Script01 = "$AdminScripts\script01.ps1"
			}
		}
	}
	
	process {
		foreach ($buildItem in $admin['AdminDirs']) {
			New-Item -ItemType Directory -Verbose -Force -Path "C:\" -Value "$buildItem"
		}
	}
	
	end {
		#end block
	}


<#
.SYNOPSIS
	A short one-line action-based description, e.g. 'Tests if a function is valid'
.DESCRIPTION
	A longer description of the function, its purpose, common use cases, etc.
.NOTES
	Information or caveats about the function e.g. 'This function is not supported in Linux'
.LINK
	Specify a URI to a help page, this will show when Get-Help -Online is used.
.EXAMPLE
	Test-MyTestFunction -Verbose
	Explanation of the function or its result. You can include multiple examples with additional .EXAMPLE lines
#>
}