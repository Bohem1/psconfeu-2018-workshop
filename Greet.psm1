function New-Greeting() {
    [CmdletBinding()]
    param(
        [Parameter(Mandatory = $true, 
            ValueFromPipeline = $true)]
        [string]$Name,

        [Parameter(Mandatory = $false)]
        [switch]$NeedCookie
    )

    process {
        if ($NeedCookie) {
            "Hello, Have a cookie " + $Name
        }
        else {
            "Hello " + $Name
        }
    }
}


function Get-Name {

    [CmdletBinding()]
    param(
        [Parameter(Mandatory = $true, 
            ValueFromPipeline = $true)]
        [Switch]$IsLongList
    )

    if ($IsLongList) {
        'a' .. 'z'
    }
    else {
        'a' .. 'd'
    }
}