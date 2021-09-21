#GmailBlocker


#Install-Module -Name ExchangeOnlineManagement
Import-Module ExchangeOnlineManagement
Connect-ExchangeOnline


#get exception list
$safesenderlist = Get-TransportRule "Gmail Block" | Select-Object -expandproperty "ExceptIfFrom" 
#$safesenderlist.length

#ask for email
$NewEmail = Read-Host -Prompt 'Input the Gmail address to add'
if ($safesenderlist.Contains($NewEmail)) {
    
    Write-Host "Email is already in the list"
}
else {
    
    $safesenderlist += $NewEmail
    Write-Output $safesenderlist
    Set-TransportRule -Identity "Gmail Block test" -ExceptIfFrom $safesenderlist
}

write-output "Email address added"
Read-Host -Prompt 'press any key to close'
Disconnect-ExchangeOnline -Confirm