#GmailBlocker
#Install-Module -Name ExchangeOnlineManagement
Import-Module ExchangeOnlineManagement
Connect-ExchangeOnline

# -1 is unlimited
#$formatenumerationlimit = -1

Get-TransportRule
Get-TransportRule "Gmail Block" | Select-Object * | Format-List
#Get-TransportRule "Gmail Block" | Select-Object "ExceptIfFrom" | Format-List  | Out-File "c:\z\gmailrule.txt"
$test = Get-TransportRule "Gmail Block" | Select-Object "ExceptIfFrom" | Format-List  

Write-Output $test
Get-TransportRule "Gmail Block" | Select-Object "ExceptIfFrom" 
#Set-TransportRule -Identity "Sender is a member of marketing" -ExceptIfFrom "Kelly Rollin"
#arguments  "ui" 
#download current set
#check for dups
#add to list
#upload list


#superstart goals
#audit 
#accept csv file 
#scan mail trace to get csv file to feed in