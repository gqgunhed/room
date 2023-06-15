# Example Output
# CsName                            : COMPUTERNAMEHERE
# WindowsProductName                : Windows 10 Enterprise
# WindowsVersion                    : 2009
# OsHardwareAbstractionLayerVersion :
# OsVersion                         : 10.0.19045 <-- this is 22H2 Update

Get-ComputerInfo | Select-Object CsName, WindowsProductName, WindowsVersion, OsHardwareAbstractionLayerVersion, OsVersion
