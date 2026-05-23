Add-Type -AssemblyName System.Drawing
try {
    $img = [System.Drawing.Image]::FromFile("D:\WRO2026\simulator\pdf-w3f\coach-photo.heic")
    $img.Save("D:\WRO2026\simulator\pdf-w3f\coach-photo.jpg", [System.Drawing.Imaging.ImageFormat]::Jpeg)
    $img.Dispose()
    Write-Output "coach-photo converted OK"
} catch {
    Write-Output "coach-photo failed: $_"
}
try {
    $img2 = [System.Drawing.Image]::FromFile("D:\WRO2026\simulator\pdf-w3f\team-photo.heic")
    $img2.Save("D:\WRO2026\simulator\pdf-w3f\team-photo.jpg", [System.Drawing.Imaging.ImageFormat]::Jpeg)
    $img2.Dispose()
    Write-Output "team-photo converted OK"
} catch {
    Write-Output "team-photo failed: $_"
}
