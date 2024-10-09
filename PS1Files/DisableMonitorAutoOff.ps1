Import-Module -name "PolicyFileEditor"

# need to install PolicyFileEditor module
# https://www.powershellgallery.com/packages/PolicyFileEditor/3.0.0
#   Install-Module -Name PolicyFileEditor -RequiredVersion 3.0.0

Remove-PolicyFileEntry -Path "$env:windir\system32\GroupPolicy\Machine\Registry.pol" -Key 'Software\Policies\Microsoft\Power\PowerSettings\3C0BC021-C8A8-4E07-A973-6B14CBCB2B7E' -ValueName 'ACSettingIndex'

Remove-PolicyFileEntry -Path "$env:windir\system32\GroupPolicy\Machine\Registry.pol" -Key 'Software\Policies\Microsoft\Power\PowerSettings\3C0BC021-C8A8-4E07-A973-6B14CBCB2B7E' -ValueName 'DCSettingIndex'