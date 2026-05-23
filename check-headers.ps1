$bytes = Get-Content "D:\WRO2026\simulator\pdf-w3f\coach-photo.heic" -Encoding Byte -TotalCount 12
$hex = ($bytes | ForEach-Object { $_.ToString("X2") }) -join " "
Write-Output "coach-photo header: $hex"
$bytes2 = Get-Content "D:\WRO2026\simulator\pdf-w3f\team-photo.heic" -Encoding Byte -TotalCount 12
$hex2 = ($bytes2 | ForEach-Object { $_.ToString("X2") }) -join " "
Write-Output "team-photo header: $hex2"
$content = Get-Content "D:\WRO2026\simulator\pdf-w3f\coach-photo.heic" -Raw
if ($content -match "<!DOCTYPE html" -or $content -match "<html") {
    Write-Output "coach-photo is HTML, not an image!"
    Write-Output $content.Substring(0, [Math]::Min(500, $content.Length))
}
$content2 = Get-Content "D:\WRO2026\simulator\pdf-w3f\team-photo.heic" -Raw
if ($content2 -match "<!DOCTYPE html" -or $content2 -match "<html") {
    Write-Output "team-photo is HTML, not an image!"
    Write-Output $content2.Substring(0, [Math]::Min(500, $content2.Length))
}
