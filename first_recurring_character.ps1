#!/bin/powershell

# return first recurring character in string 

# define string
$foo = 'abcdedcba'

# create empty hash table and array
$hash = @{}
$array = @()

# define function for returning first character
function FirstRecur {
    foreach ($Character in $foo.ToCharArray())
    {
        if ($hash.ContainsKey($Character))
        {
            return $Character
        } else {
            $hash.Add($Character,0)
        }
    }
    return '0'
}

# call function 
Write-Output(FirstRecur)
