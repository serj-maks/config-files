Write-Host 'Welcome back'
Write-Host ''

Import-Module posh-git
Import-Module oh-my-posh
$omp_config = Join-Path $PSScriptRoot ".\my.omp.json"
oh-my-posh --init --shell pwsh --config $omp_config | Invoke-Expression

Import-Module -Name Terminal-Icons

# set PowerShell to UTF-8
[console]::InputEncoding = [console]::OutputEncoding = New-Object System.Text.UTF8Encoding

# PSReadLine
Set-PSReadLineOption -EditMode Emacs
Set-PSReadLineOption -BellStyle None
Set-PSReadLineKeyHandler -Chord 'Ctrl+d' -Function DeleteChar
Set-PSReadLineOption -PredictionSource History
Set-PSReadLineOption -PredictionViewStyle ListView

# Fzf
Import-Module PSFzf
Set-PsFzfOption -PSReadlineChordProvider 'Ctrl+f' -PSReadlineChordReverseHistory 'Ctrl+r'

# Env
$env:GIT_SSH = "C:\Windows\system32\OpenSSH\ssh.exe"

# Alias
Set-Alias -Name v -Value nvim
Set-Alias ll ls
Set-Alias g git
Set-Alias grep findstr
Set-Alias tig 'C:\Program Files\Git\usr\bin\tig.exe'
Set-Alias less 'C:\Program Files\Git\usr\bin\less.exe'
Set-Alias -Name touch -Value New-Item
Set-Alias tomcaton 'C:\Users\user\Desktop\apache-tomcat\10.0.11\bin\startup.bat'
Set-Alias tomcatoff 'C:\Users\user\Desktop\apache-tomcat\10.0.11\bin\shutdown.bat'

function go {
    & 'C:\users\user\appdata\local\jetbrains\toolbox\apps\idea-c\ch-0\213.5744.223\bin\idea64.exe' 
    & 'C:\Users\user\AppData\Local\Obsidian\Obsidian.exe'
    & 'C:\Program Files\BraveSoftware\Brave-Browser\Application\brave.exe'
    & 'C:\Program Files\Double Commander\doublecmd.exe'
    & 'C:\Program Files\WindowsApps\5319275A.WhatsAppDesktop_2.2228.14.0_x64__cv1g1gvanyjgm\app\WhatsApp.exe'
    & 'C:\Program Files\WindowsApps\TelegramMessengerLLP.TelegramDesktop_4.2.4.0_x64__t4vj0pshhgkwm\Telegram.exe'
    & 'C:\Users\user\AppData\Local\Programs\YouGile\YouGile.exe'
    & 'C:\Users\user\AppData\Local\Programs\Simplenote\Simplenote.exe'
}

# Utilities
# which-command
function which ($command) {
  Get-Command -Name $command -ErrorAction SilentlyContinue |
    Select-Object -ExpandProperty Path -ErrorAction SilentlyContinue
}
