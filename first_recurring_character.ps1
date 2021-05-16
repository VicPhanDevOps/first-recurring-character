# return first recurring character in string 

# prompt user input
Write-Host "`nReturn first recurring character in string."
Pause

# declare foo variable 
$foo = Read-Host -Prompt "`nPlease type a string you would like the first recurring character for`n"

# create empty hash table and array
$fooHash= @{}
$fooArray = @()

# define function for returning first character
function FirstRecur()
{
    foreach ($character in $foo.ToCharArray())
    {
        if ($fooHash.ContainsKey($character))
        {
            return $character
        } else {
            $fooHash.Add($character,0)
        }
    }
    return '0'
}

# call function 
Write-Output(FirstRecur)
