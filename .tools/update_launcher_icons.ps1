# Resize assets/icon/app_icon.jpg into Android mipmap and drawable launcher icons
$repo = Split-Path -Parent $MyInvocation.MyCommand.Definition
$repo = Split-Path -Parent $repo
$src = Join-Path $repo 'assets\icon\app_icon.jpg'
if (-not (Test-Path $src)) { Write-Error "Source icon not found: $src"; exit 1 }
Add-Type -AssemblyName System.Drawing

# target sizes (px) for densities
$targets = @{
    'mipmap-mdpi\ic_launcher.png' = 48
    'mipmap-hdpi\ic_launcher.png' = 72
    'mipmap-xhdpi\ic_launcher.png' = 96
    'mipmap-xxhdpi\ic_launcher.png' = 144
    'mipmap-xxxhdpi\ic_launcher.png' = 192
    'drawable-mdpi\ic_launcher_foreground.png' = 48
    'drawable-hdpi\ic_launcher_foreground.png' = 72
    'drawable-xhdpi\ic_launcher_foreground.png' = 96
    'drawable-xxhdpi\ic_launcher_foreground.png' = 144
    'drawable-xxxhdpi\ic_launcher_foreground.png' = 192
}

$androidRes = Join-Path $repo 'android\app\src\main\res'
$processed = @()

foreach ($rel in $targets.Keys) {
    $size = $targets[$rel]
    $dest = Join-Path $androidRes $rel
    $destDir = Split-Path -Parent $dest
    if (-not (Test-Path $destDir)) { New-Item -ItemType Directory -Path $destDir | Out-Null }
    try {
        $img = [System.Drawing.Image]::FromFile($src)
        $thumb = New-Object System.Drawing.Bitmap $size, $size, [System.Drawing.Imaging.PixelFormat]::Format32bppArgb
        $g = [System.Drawing.Graphics]::FromImage($thumb)
        $g.InterpolationMode = [System.Drawing.Drawing2D.InterpolationMode]::HighQualityBicubic
        $g.DrawImage($img, 0, 0, $size, $size)
        $g.Dispose()
        $img.Dispose()
        $tmp = $dest + '.tmp'
        $thumb.Save($tmp, [System.Drawing.Imaging.ImageFormat]::Png)
        $thumb.Dispose()
        Move-Item -LiteralPath $tmp -Destination $dest -Force
        $processed += $dest
        Write-Output "Wrote $dest"
    } catch {
        Write-Output "Error processing $rel : $($_.Exception.Message)"
    }
}

Write-Output "\nProcessed: $($processed.Count) files"
$processed | ForEach-Object { Write-Output " - $_" }

