param (
    [string]$path,
    [string]$exclude = " "
)
Get-ChildItem -Path $path -Recurse |
Select -ExpandProperty FullName |
Where {$_ -NotMatch $exclude } |
sort length -Descending |
Remove-Item -Verbose -force
