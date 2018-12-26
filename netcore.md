## Netcore

```shell
## Install 
wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.asc.gpg
sudo mv microsoft.asc.gpg /etc/apt/trusted.gpg.d/
wget -q https://packages.microsoft.com/config/ubuntu/18.04/prod.list 
sudo mv prod.list /etc/apt/sources.list.d/microsoft-prod.list
sudo chown root:root /etc/apt/trusted.gpg.d/microsoft.asc.gpg
sudo chown root:root /etc/apt/sources.list.d/microsoft-prod.list

sudo apt-get install apt-transport-https
sudo apt-get update
sudo apt-get install dotnet-sdk-2.1

## Info
dotnet --info
dotnet --version

## New Project
dotnet new web -n NancyFXDemo

## Edit file *.csproj add packages
dotnet restore

## Install Packages 
dotnet add package [package name]-v [version]
dotnet remove package [package name]

## Builds
dotnet build
dotnet build -c Release
dotnet publish

## Misc
dotnet clean
dotnet run
dotnet test
```

### Resources
https://docs.microsoft.com/en-us/dotnet/core/tools

https://carlos.mendible.com/2017/09/21/net-core-cli-and-msbuild-cheat-sheet/

### Nancy
https://dotnetcoretutorials.com/2017/03/16/getting-start-nancyfx-asp-net-core/

https://www.hanselman.com/blog/ExploringAMinimalWebAPIWithNETCoreAndNancyFX.aspx

### Log4net
https://msdn.microsoft.com/en-us/magazine/mt694089.aspx

https://dotnetthoughts.net/how-to-use-log4net-with-aspnetcore-for-logging/

https://stackoverflow.com/questions/46169606/how-to-use-log4net-in-asp-net-core-2-0

https://github.com/huorswords/Microsoft.Extensions.Logging.Log4Net.AspNetCore

https://cloud.google.com/logging/docs/integrate/dotnet

### dotnet issues
https://github.com/Microsoft/vstest/issues/821

### misc
https://stackoverflow.com/questions/41459631/how-to-connect-to-an-oracle-database-connection-from-net-core

https://www.hanselman.com/blog/ExploringAMinimalWebAPIWithNETCoreAndNancyFX.aspx

https://carlos.mendible.com/2017/01/16/net-core-and-nancyfx-can-writing-a-webapi-get-any-simpler/

https://dotnetthoughts.net/using-nancyfx-in-aspnet-core/ 
