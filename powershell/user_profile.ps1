Write-Host 'Welcome back'
Write-Host ''

# set PowerShell to UTF-8
[console]::InputEncoding = [console]::OutputEncoding = New-Object System.Text.UTF8Encoding

# set oh-my-posh default shell
oh-my-posh init pwsh | Invoke-Expression

# set oh-my-posh config
oh-my-posh init pwsh --config 'C:/Users/serjmaks/.config/powershell/my.omp.json' | Invoke-Expression

# Alias
Set-Alias -Name vim -Value nvim
Set-Alias ll ls
Set-Alias g git
Set-Alias grep findstr
Set-Alias tig 'C:\Program Files\Git\usr\bin\tig.exe'
Set-Alias less 'C:\Program Files\Git\usr\bin\less.exe'
Set-Alias -Name touch -Value New-Item
Set-Alias -Name f -Value far
Set-Alias tomcaton 'C:\Users\serjmaks\Desktop\tomcat\apache-tomcat-10.0.26\bin\startup.bat'
Set-Alias tomcatoff 'C:\Users\serjmaks\Desktop\tomcat\apache-tomcat-10.0.26\bin\shutdown.bat'

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

# Terminal-Icons
Import-Module -Name Terminal-Icons

# z (dir jumper)
Import-Module -Name z

# PSReadLine
Set-PSReadLineOption -PredictionSource History
Set-PSReadLineOption -PredictionViewStyle ListView
Set-PSReadLineKeyHandler -Chord 'Ctrl+d' -Function DeleteChar
Set-PSReadLineOption -BellStyle None

# PSFzf
Import-Module PSFzf
Set-PsFzfOption -PSReadlineChordProvider 'Ctrl+f' -PSReadlineChordReverseHistory 'Ctrl+r'

# Utilities
# which-command
function which ($command) {
  Get-Command -Name $command -ErrorAction SilentlyContinue |
    Select-Object -ExpandProperty Path -ErrorAction SilentlyContinue
}
