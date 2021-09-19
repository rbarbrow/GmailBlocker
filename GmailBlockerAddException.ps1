#GmailBlocker
#Install-Module -Name ExchangeOnlineManagement
Import-Module ExchangeOnlineManagement
Connect-ExchangeOnline



#Get-TransportRule
#Get-TransportRule "Gmail Block" | Select-Object * | Format-List
#Get-TransportRule "Gmail Block" | Select-Object "ExceptIfFrom" | Format-List  | Out-File "c:\z\gmailrule.txt"
#$test = Get-TransportRule "Gmail Block" | Select-Object -expandproperty "ExceptIfFrom" | Format-List  
$safesenderlist = Get-TransportRule "Gmail Block test" | Select-Object -expandproperty "ExceptIfFrom" 
$safesenderlist.length
$NewEmail = Read-Host -Prompt 'Input the Gmail address to add'
$safesenderindex = $safesenderlist.length+1
$safesenderlist[$safesenderindex] = $NewEmail
Write-Output $safesenderlist
Set-TransportRule -Identity "Gmail Block test" -ExceptIfFrom $safesenderlist


#Get-TransportRule "Gmail Block" | Select-Object "ExceptIfFrom" 
#Set-TransportRule -Identity "Gmail Block test" -ExceptIfFrom "rbarbrow@gmail.com"


##check safesenderlist for dups
##add new email to array



#arguments  "ui" 
#download current set
#check for dups
#add to list
#upload list

# must be an array to add
# $blockertest = @('rbarbrow@gmail.com','lbarbrow@gmail.com')
# Set-TransportRule -Identity "Gmail Block test" -ExceptIfFrom $blockertest



#superstart goals
#audit 
#accept csv file 
#scan mail trace to get csv file to feed in