#Download and Install Sysinternals Suite
$URL = "https://download.sysinternals.com/files/SysinternalsSuite.zip"
$PATH = "C:\Users\vagrant\Downloads\sysinternalsSuite.zip"
Invoke-WebRequest -URI $URL -OutFile $PATH
Expand-Archive C:\Users\vagrant\Downloads\sysinternalsSuite.zip -DestinationPath C:\Users\vagrant\Downloads\sysinternalsSuite

#Download and Install Wireshark
$URL = "https://2.na.dl.wireshark.org/win64/Wireshark-win64-4.0.8.exe"
$PATH = "C:\Users\vagrant\Downloads\wireshark.exe"
Invoke-WebRequest -URI $URL -OutFile $PATH
Set-Location -Path "C:\Users\vagrant\Downloads"
& ".\wireshark.exe" /S /desktopicon=yes

#Download npcap (Install needs to occur manually due to licensing restrictions)
$URL = "https://npcap.com/dist/npcap-1.76.exe"
$PATH = "C:\Users\vagrant\Downloads\npcap.exe"
Invoke-WebRequest -URI $URL -OutFile $PATH
Set-Location -Path "C:\Users\vagrant\Downloads"
& ".\npcap.exe"

