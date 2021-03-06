﻿$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
  packageName   = 'clonespy'
  fileType      = 'exe'
  url           = 'http://www.clonespy.com/english/download/cspy343.exe'

  silentArgs    = '/S /NODESKTOPSHORTCUT /X64'
  validExitCodes= @(0)

  softwareName  = 'clonespy*'
  checksum      = 'F200BC324AE1C57EDE1476AEC22A9089'
  checksumType  = 'md5'
}

Install-ChocolateyPackage @packageArgs
