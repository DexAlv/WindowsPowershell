function prompt { $E = [char]27; $user = $env:USERNAME; $currentFolder = Split-Path -Leaf -Path (Get-Location); if ($currentFolder -eq '') { $currentFolder = '\' }; return "$E[36m╭─ 🪟 $user
$E[36m╰─ $E[34m$currentFolder $E[32m❯$E[0m " }; function ssh { $target = $args -join ' '; [Console]::Title = "⚡ SSH: $target"; & ssh.exe $args; [Console]::Title = "Windows PowerShell" }
