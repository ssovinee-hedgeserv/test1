Enable-PSRemoting

Get-PSSessionConfiguration

$env:COMPUTERNAME

Invoke-Command -ComputerName AWSSQLWBS21 {$env:COMPUTERNAME}
Invoke-Command -ComputerName AWSSQLWBS21 -ScriptBlock {get-eventlog -logname security -newest 10}

$sess = New-PSSession -ComputerName AWSSQLWBS21

Get-PSSession

Invoke-Command -Session $sess {$var=10}
Invoke-Command -Session $sess {$var}

$sess

$sess | Remove-PSSession

$sqls = "AWSSQLWBS21", "AWSSQLWBT22"

$sqls

$sess = New-PSSession -ComputerName $sqls

$sess

Invoke-Command -Session $sess {$env:COMPUTERNAME}
$sess[0]

Enter-PSSession $sess[0]
exit