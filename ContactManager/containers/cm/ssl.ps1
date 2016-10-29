import-module WebAdministration

Get-ChildItem Cert:\LocalMachine\My | Where-Object { $_.Subject -eq "CN=testsite.local"} | new-item IIS:\SslBindings\0.0.0.0!443
new-webbinding -Name "Default Web Site" -Protocol https -Port 443 -IPAddress "*"