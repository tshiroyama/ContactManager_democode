FROM tshiroyama/aspnetbase

WORKDIR /install

ADD site.pfx ssl.ps1 /install/
RUN certutil -f -p 1234 -importpfx .\site.pfx
RUN powershell .\ssl.ps1

ADD ContactManager.zip  ContactManager.deploy.cmd  ContactManager.SetParameters.xml  ContactManager.SourceManifest.xml /install/
RUN ContactManager.deploy.cmd /y


