FROM mcr.microsoft.com/dotnet/core/sdk:3.0

LABEL maintainer="Grega Vrbančič"
LABEL version="1.0"
LABEL description="Simple ASP.NET MVC example application."

WORKDIR /app

COPY . /app
RUN dotnet restore
RUN dotnet publish -c Release -o out

ENV ASPNETCORE_URLS http://+:80

EXPOSE 80
ENTRYPOINT ["dotnet", "./out/DockerDemo.dll"]