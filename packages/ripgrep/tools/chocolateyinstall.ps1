﻿$ErrorActionPreference = 'Stop';

$version     = $env:chocolateyPackageVersion
$packageName = $env:chocolateyPackageName
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$url         = ("https://github.com/BurntSushi/ripgrep/releases/download/{0}/ripgrep-{0}-i686-pc-windows-msvc.zip" -f $version)
$url64       = ("https://github.com/BurntSushi/ripgrep/releases/download/{0}/ripgrep-{0}-x86_64-pc-windows-msvc.zip" -f $version)

$packageArgs = @{
    packageName    = $packageName
    unzipLocation  = $toolsDir
    fileType       = 'exe'
    url            = $url
    checksum       = "4AAF4057A94F8A3FA731F6A442118D4F8A4883A9"
    checksumType   = "sha1"
    url64bit       = $url64
    checksum64     = "C01CE5841089D6B63A989CDE2A739DE76DC096B0"
    checksumType64 = "sha1"
}

Install-ChocolateyZipPackage @packageArgs
