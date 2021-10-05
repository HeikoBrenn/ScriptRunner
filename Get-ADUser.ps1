#Requires -Version 4.0
#Requires -Modules ActiveDirectory

<#
    .SYNOPSIS
         Generates a report of all Active Directory users
    
    .DESCRIPTION  

    .NOTES
        This PowerShell script was developed and optimized for ScriptRunner. The use of the scripts requires ScriptRunner. 
        The customer or user is authorized to copy the script from the repository and use them in ScriptRunner. 
        The terms of use for ScriptRunner do not apply to this script. In particular, ScriptRunner Software GmbH assumes no liability for the function, 
        the use and the consequences of the use of this freely available script.
        PowerShell is a product of Microsoft Corporation. ScriptRunner is a product of ScriptRunner Software GmbH.
        © ScriptRunner Software GmbH

    .COMPONENT
        Requires Module ActiveDirectory
        Requires Library Script ReportLibrary from the Action Pack Reporting\_LIB_

    #>

param(

)

Import-Module ActiveDirectory

try{
    
    
    $user= Get-ADUser -filter *  | Select-Object Name, SamAccountName, UserPrincipalName, DistinguishedName, ObjectClass, Enabled  | Sort-Object SAMAccountName
        
    ConvertTo-ResultHtml -Result $user
    
    }
catch{
    throw
}
finally{
}