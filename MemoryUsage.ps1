#get top twenty processes using most memory
$topProcesses= Get-Process | Sort-Object -Property WorkingSet -Descending | Select-Object -First 20

#result output
Write-Host "Top 20 Processes: "
foreach ($process in $topProcesses) {
	$processName = $process.ProcessName
	$memoryUsage = $process.WorkingSet / 1MB # Convert memory usage to MB
	Write-Host "$processName - Memory Usage: $memoryUsage MB"
}
