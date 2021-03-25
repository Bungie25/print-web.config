Copy-Item "web.config" -Destination "C:\temp\web.config"
C:\Windows\Microsoft.NET\Framework\v4.0.30319\aspnet_regiis.exe -pdf connectionStrings 'C:\Temp'
$myText = Get-Content C:\Temp\web.config
$userid = $myText -split ";" | Select-String -Pattern 'UserID'
$justtheid = $userid -replace '=',' ' 
$deletefile = Remove-Item "C:\temp\web.config"



$MsgBox = [System.Windows.Forms.MessageBox]::Show("Thank you, your Userid is: $justtheid")
If($MsgBox -eq 'OK'){
    
    $deletefile
}