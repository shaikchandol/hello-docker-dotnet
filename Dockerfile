# Use official .NET runtime image
FROM mcr.microsoft.com/dotnet/runtime:10.0

WORKDIR /app

# Copy published output
COPY bin/Release/net10.0/publish/ .

ENTRYPOINT ["dotnet", "HelloDockerApp.dll"]