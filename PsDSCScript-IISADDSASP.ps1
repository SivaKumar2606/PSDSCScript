# PSDSC Script For IIS,Asp.Net45 and ADDS

Configuration WebServerAspAdds
{
    Node WinDCvm
    {
        WindowsFeature IIS {
            Ensure = 'Present'
            Name   = 'Web-Server'
        }
        WindowsFeature DotNet {

            Ensure    = 'present'
            Name      = 'Web-Asp-Net45'
            DependsOn = '[WindowsFeature]IIS'
        }
        WindowsFeature ADDSInstall {
            Ensure = 'Present'
            Name   = 'AD-Domain-Services'
        }

    }
}
