# Server Images



```dockerfile
#★ Windows Image Distributions
	#- mcr.microsoft.com/windows/servercore
		#? All (or most) of 'Windows Server' but without the desktop environment
	#- mcr.microsoft.com/windows/nanoserver
		#? Stripped-down to the be as lightweight as possible for development purposes
			# Does not support many of Windows Server's most popular features,
			# 	such as the ability to run as a 'Domain Controller'
			#	So if that's what you intend to develop for, you want to use 'Server Core'
			#	or the full 'Windows Server' image that includes a desktop environment.
	#- mcr.microsoft.com/windows:20H2
		#? Windows 10
```
