### Herensuge 1###

## Find the smtp files with the date of aug. 23 ##
[string[]]$array = Get-ChildItem "C:\Users\Administrator\Artifacts\smtp\ebeltze" -Name

for($i=0; $i -le $array.GetUpperBound(0); $i++)
{
    $date = (Get-Date 01.01.1970)+([System.TimeSpan]::fromseconds($array[$i]))
    #$date
    if($date -like "*08/23/2018*")
    {
        write-host $array[$i] "-->" $date
    }
}


## out of the found smtp files for aug.23, lets find message that contain fwd ##
Select-String -Path "C:\Users\Administrator\Artifacts\smtp\ebeltze\15350*" -Pattern 'Fwd:'

## out of the smtp files that contain fwd, let's open the first 5 lines of each ##

Get-Content "C:\Users\Administrator\Artifacts\smtp\ebeltze\1535052757" -First 60


write-host "----------------------------------------------------------------------"


Get-Content "C:\Users\Administrator\Artifacts\smtp\ebeltze\1535064592" -First 60



### Herensuge 3 ### Not working currenlty

Get-Content "..\caller.vbs" -Tail 10


### Herensuge 4 ###

Invoke-Item "..\caller.vbs"

Get-Content "..\aisoudfwemidf.ps1" -Tail 10
