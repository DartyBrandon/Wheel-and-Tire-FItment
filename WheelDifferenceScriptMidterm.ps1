# Prompt the user for input
$newWheelWidth = Read-Host "Enter the new wheel width in inches"
$newWheelOffset = Read-Host "Enter the new wheel offset in millimeters"
$newTireWidth = Read-Host "Enter the new tire width in millimeters"
$oldWheelWidth = Read-Host "Enter the old wheel width in inches"
$oldWheelOffset = Read-Host "Enter the old wheel offset in millimeters"
$oldTireWidth = Read-Host "Enter the old tire width in millimeters"

# Check if the new tire width is greater than the old tire width
if ($newTireWidth -gt $oldTireWidth) {
    # Calculate the difference in tire width
    $tireWidthDifference = ($newTireWidth / 25.4) - ($oldTireWidth / 25.4)
} else {
    # Calculate the difference in tire width
    $tireWidthDifference = ($oldTireWidth / 25.4) - ($newTireWidth / 25.4)
}

# Calculate the difference in wheel width
$wheelWidthDifference = $newWheelWidth - $oldWheelWidth

# Calculate the difference in offset
$WheelOffsetDifference = ($oldWheelOffset / 25.4) - ($newWheelOffset / 25.4)

# Check if new tire width is greater than old tire width
if ($newtirewidth -gt $oldtirewidth) {
    # Calculate the total difference
    $totalDifference = ($wheelWidthDifference / 2) + ($tireWidthDifference / 2) + $wheelOffsetDifference
} else {
    # Calculate the total difference
    $totalDifference = ($WheelWidthDifference / 2) + $wheelOffsetDifference - ($tireWidthDifference / 2) 
}

# Output the result
Write-Host "The new wheel and tire setup will stick out $totalDifference inches further than the old setup."
