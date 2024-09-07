# Author: s1ck


$scriptName = [System.IO.Path]::GetFileName($MyInvocation.MyCommand.Path)

if ($args.Length -lt 1){
    foreach ($arg in $args) {
        Write-Output $arg
    }

    echo "Usage .\$scriptName <word>"
        exit 1
}

$word=$args[0]


try{
    echo "$word 😀 $word`n"
    $res=Invoke-Webrequest https://api.dictionaryapi.dev/api/v2/entries/en/$word
        echo $res.Content | jq '.[] | .meanings' | jq .[].'definitions'.[].'definition'
}
catch{
    echo "Error occurred $_ "
}
