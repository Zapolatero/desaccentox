param(
    [string[]]$Files
)

process {
    $JSON_PATH = "accents.json";
    foreach ($file in $Files) {
        $text = Get-content -Encoding utf8 -Path $file;
        $AccentsJson = Get-content $JSON_PATH -Encoding utf8 | ConvertFrom-Json;
        foreach ($accent in $AccentsJson.accents) {
            if ($text.Contains($accent[0])) {
                $text = $text.Replace($accent[0], $accent[1])
            }
        }
        Set-Content -Path $file -Value $text -Encoding utf8
        Write-Host $file "desaccentoxified"
    }
    Write-Host "All desaccentoxified"
}
 