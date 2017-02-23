Get-Counter '\Processor(_Total)\% Processor Time'
Get-Counter '\Memory\Available MBytes'
Get-CimInstance -ClassName win32_operatingsystem | select csname, lastbootuptime
