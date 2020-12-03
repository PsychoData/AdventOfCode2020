Get-content "$env:USERPROFILE\Downloads\input.txt" -OutVariable inText | Out-Null

$width = ($intext | select -First 1 ).length
$lines = $intext.Count

$slopeRight = 3
$slopeDown  = 1
$startIndex = 0
$pathOutput = For ($i=0; $i -le ($lines-1); $i+= $slopeDown) {
    $inText[$i][($startIndex + ($i*$slopeRight)) % $width]
}
$pathOutput.Where({$_ -eq '#'}).count
