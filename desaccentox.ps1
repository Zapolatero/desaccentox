
param(
    [string[]]$Files)

process {
    Write-Host "test"
    foreach ($file in $Files) {
        $file
        Get-content $file
        Write-Host "test"
    }
}