#GmailBlocker
Install-Module -Name ExchangeOnlineManagement
Import-Module ExchangeOnlineManagement
Connect-ExchangeOnline

Get-TransportRule
Get-TransportRule "Gmail Block" | Select-Object * | Format-List
Get-TransportRule "Gmail Block" | Select-Object "ExceptIfFrom" | Format-List | Out-File "c:\z\gmailrule.txt"

#arguments  "ui" 
#download current set
#check for dups
#add to list
#upload list


#superstart goals
#audit 
#accept csv file 
#scan mail trace to get csv file to feed in