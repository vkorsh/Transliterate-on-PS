#Функция транслитерации найдена на просторах интернета
Function global:TranslitToLAT
{
param([string]$inString)
$Translit_To_LAT = @{
[char]'а' = "a"
[char]'А' = "A"
[char]'б' = "b"
[char]'Б' = "B"
[char]'в' = "v"
[char]'В' = "V"
[char]'г' = "g"
[char]'Г' = "G"
[char]'д' = "d"
[char]'Д' = "D"
[char]'е' = "e"
[char]'Е' = "E"
[char]'ё' = "e"
[char]'Ё' = "E"
[char]'ж' = "zh"
[char]'Ж' = "Zh"
[char]'з' = "z"
[char]'З' = "Z"
[char]'и' = "i"
[char]'И' = "I"
[char]'й' = "i"
[char]'Й' = "I"
[char]'к' = "k"
[char]'К' = "K"
[char]'л' = "l"
[char]'Л' = "L"
[char]'м' = "m"
[char]'М' = "M"
[char]'н' = "n"
[char]'Н' = "N"
[char]'о' = "o"
[char]'О' = "O"
[char]'п' = "p"
[char]'П' = "P"
[char]'р' = "r"
[char]'Р' = "R"
[char]'с' = "s"
[char]'С' = "S"
[char]'т' = "t"
[char]'Т' = "T"
[char]'у' = "u"
[char]'У' = "U"
[char]'ф' = "f"
[char]'Ф' = "F"
[char]'х' = "kh"
[char]'Х' = "Kh"
[char]'ц' = "tc"
[char]'Ц' = "Tc"
[char]'ч' = "ch"
[char]'Ч' = "Ch"
[char]'ш' = "sh"
[char]'Ш' = "Sh"
[char]'щ' = "shch"
[char]'Щ' = "Shch"
[char]'ъ' = "" # "``"
[char]'Ъ' = "" # "``"
[char]'ы' = "y" # "y`"
[char]'Ы' = "Y" # "Y`"
[char]'ь' = "" # "`"
[char]'Ь' = "" # "`"
[char]'э' = "e" # "e`"
[char]'Э' = "E" # "E`"
[char]'ю' = "iu"
[char]'Ю' = "Iu"
[char]'я' = "ia"
[char]'Я' = "Ia"
[char]' ' = ""
}
$inChars = $null
$outChars = $null

foreach ($c in $inChars = $inString.ToCharArray())
{
if ($Null -cne $Translit_To_LAT[$c])
{$outChars += $Translit_To_LAT[$c]}
else
{$outChars += $c}
}
Write-Output $outChars
}

#Очищаем консоль перед использованием
Clear-Host

[console]::BackgroundColor = "Black"

Write-Host `n "Скрипт транслитерации" `n -Backgroundcolor DarkGreen

$text = Get-Clipboard

$log = TranslitToLAT $text

Write-Host $log "Скопировано в буфер обмена"

Set-Clipboard -Value $log

Start-Sleep -s 0.5

#Read-Host "Press any Key"