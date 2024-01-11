##PowerShell -NoExit "script.ps1"

##call prepare-env/01-scoop.bat
##call prepare-env/02-python-install.bat
##call prepare-env/03-pip-upd.bat
##call prepare-env/04-pyTorch-cpu.bat
##call prepare-env/05-ffmpeg.bat


##PowerShell -NoExit "prepare-env/01-scoop.ps1"
##PowerShell -NoExit "prepare-env/02-python-install.ps1"
##PowerShell -NoExit "prepare-env/03-pip-upd.ps1"
##PowerShell -NoExit "prepare-env/04-pyTorch-cpu.ps1"
##PowerShell -NoExit "prepare-env/05-ffmpeg.ps1"

##set-executionpolicy unrestricted

##PowerShell "prepare-env/01-scoop.ps1"
##PowerShell "prepare-env/02-python-install.ps1"
##PowerShell "prepare-env/03-pip-upd.ps1"
##PowerShell "prepare-env/04-pyTorch-cpu.ps1"
##PowerShell "prepare-env/05-ffmpeg.ps1"


cd prepare-env
./01-scoop.ps1
./02-python-install.ps1
./03-pip-upd.ps1
./04-pyTorch-cpu.ps1
./05-ffmpeg.ps1

Pause