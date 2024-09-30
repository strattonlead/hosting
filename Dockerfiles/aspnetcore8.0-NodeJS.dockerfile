FROM mcr.microsoft.com/dotnet/aspnet:8.0 

RUN apt-get update
RUN apt-get install -y libgdiplus nodejs tzdata wget unzip locales libxss1 libnss3

ENTRYPOINT ["dotnet", "SalesPortal.Hosts.Worker.dll"]
