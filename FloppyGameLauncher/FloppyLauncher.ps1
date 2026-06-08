$FloppyDrive = "A:"
$FileToRead = Join-Path $FloppyDrive "game.txt"

$AlreadyLaunched = $false

while ($true) {

    if (Test-Path $FileToRead) {

        if (-not $AlreadyLaunched) {

            try {

                $Content = Get-Content $FileToRead -Raw -ErrorAction Stop

                if ($Content -match "target=(.+)") {

                    $Target = $Matches[1].Trim()

                    if ($Target -match "^[a-zA-Z]+://") {
                        Start-Process $Target
                    }
                    elseif (Test-Path $Target) {
                        Start-Process $Target
                    }

                    $AlreadyLaunched = $true
                }

            }
            catch {
                # Ignore les erreurs de lecture
            }
        }
    }
    else {
        # La disquette a été retirée
        $AlreadyLaunched = $false
    }

    Start-Sleep -Seconds 3
}