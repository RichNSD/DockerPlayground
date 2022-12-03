# Meant to be run during a Docker Build process

$ConfirmPreference="None"
$ErrorView="CategoryView"
$ErrorActionPreference="Continue"
$VerbosePreference="Continue"
$WarningPreference="Continue"
$DebugPreference="Continue"


$dirParams = @{
	ItemType =	Directory
	Path =		"C:\"
	Verbose =	$true
	PassThru =	$true
	Force =		$true
}

New-Item @dirParams -Name ".admin"



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
		#begin block
	}
	
	process {
		#main process block
	}
	
	end {
		#end block
	}
}