param(
    [string]$docfx,
    [string]$remote,
    [switch]$debug,
    [string]$entities,
    [string]$tables,
    [string]$br,         # business rules
    [string]$reference
)

if ($debug -eq $true) {
    #$git_bin = "C:\Program Files\Git\usr\bin"
    $working_directory = Get-Location | Out-String
    Write-Host "cwd is $working_directory"
    Write-Host "user is $env:USERNAME"

    if (test-path "$home\.ssh\id_rsa.pub") {
        Write-Host "Has public key:"
        Get-Content "$home\.ssh\id_rsa.pub"
    }
    else {
        Write-Host "Doesn't have SSH public key!!"
    }
}


Write-Host "Setting up git remote ssh..."

git config remote.ssh.url
if ($lastexitcode -eq 1) {
    git remote add ssh $remote
}

Write-Host "Getting Latest Changes"
git checkout master
git pull --rebase

Write-Host "Copy generated entities (.md files)"
try
{
  Remove-Item -Path ".\entities\*.*" -Force
  Copy-Item -Path $entities -Destination "." -Force -Recurse
}
catch
{  
  Write-Error $_
  Exit 300
}

Write-Host "Copy generated tables (.md files)"
try {
    Remove-Item -Path ".\tables\*.*" -Force
    Copy-Item -Path $tables -Destination "." -Force -Recurse
}
catch {  
    Write-Error $_
    Exit 400
}

Write-Host "Copy generated business rules (.md files)"
try {
    Copy-Item -Path $br -Destination "." -Force -Recurse
}
catch {  
    Write-Error $_
    Exit 400
}

Write-Host "Copy generated reference topics (.md files)"
try {
    Copy-Item -Path $reference -Destination "." -Force -Recurse
}
catch {  
    Write-Error $_
    Exit 400
}

Write-Host "Building docfx"
Invoke-Expression "$docfx build"

if ($lastexitcode -ne 0) {
Write-Host "Error during build"
Exit $lastexitcode
}

Write-Host "Upload Changes to Github"
git add -A
$now = [System.DateTime]::Now.ToShortTimeString();
git commit -m "Latest changes from buid bot: $now"
git push ssh master
