## SQL Server Dockerfiles

Example dockerfiles to attach a simple database to a SQL Server image in windows or linux container on Windows 10

## Usage Example - files copied to C:\Docker\Builds

```sh
docker build -t gwf/mssqlserver -f C:\Docker\Builds\DockerFile C:\docker\builds\
```

## Run Docker Image

```sh
docker run -p 1433:1433 --name GWF_MSSQLSERVER -d gwf/mssqlserver
```

## Source Images

microsoft/mssql-server-linux

microsoft/mssql-server-windows