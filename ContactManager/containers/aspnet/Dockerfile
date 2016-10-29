FROM microsoft/windowsservercore 

RUN dism /online /enable-feature /all /featurename:iis-webserver /NoRestart
RUN dism /online /enable-feature /featurename:IIS-ASPNET45 /All /NoRestart
RUN mkdir c:\install

ADD WebDeploy_amd64_ja-JP.msi /install/WebDeploy_amd64_ja-JP.msi
ADD vim80-kaoriya-win64-8.0.0039-20161016.zip /install/vim80-kaoriya-win64-8.0.0039-20161016.zip
WORKDIR /install

RUN powershell -Command Start-Process msiexec.exe  -ArgumentList '/i','c:\install\WebDeploy_amd64_ja-JP.msi','/qn' -Wait

