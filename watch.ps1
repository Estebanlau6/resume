$file = "C:\Users\laure\resume\Esteban_Laurent_CV.yaml"
$lastWrite = (Get-Item $file).LastWriteTime

Write-Host "Surveillance de $file... (Ctrl+C pour arreter)"

& C:\Users\laure\resume\.venv\Scripts\Activate.ps1

while ($true) {
    Start-Sleep -Seconds 1
    $current = (Get-Item $file).LastWriteTime
    if ($current -ne $lastWrite) {
        $lastWrite = $current
        Write-Host "`n[$((Get-Date).ToString('HH:mm:ss'))] Modification detectee, rendu en cours..."
        rendercv render $file
    }
}
