# Substitube SCHEME_BALANCED with the alias of your pwer scheme, check readme to know how to get it
# Get the current timeout for turning off the display when plugged in (in seconds)
$currentTimeout = [convert]::ToInt32((powercfg /query SCHEME_BALANCED SUB_VIDEO VIDEOIDLE | Select-String -Pattern 'AC.*:\s+0x([\da-fA-F]+)').Matches[0].Groups[1].Value,16)

# Display the current timeout
Write-Host "Current timeout for turning off the display when plugged in: $($currentTimeout) seconds"

$newTimeoutInMinutes = 30
if ($currentTimeout -eq 1800){
$newTimeoutInMinutes = 1
}
# Set the new timeout for turning off the display when plugged in (replace <NewTimeoutInSeconds> with the desired value)
powercfg /change monitor-timeout-ac $newTimeoutInMinutes

Write-Host "New timeout for turning off the display when plugged in set to: $newTimeoutInMinutes min"
