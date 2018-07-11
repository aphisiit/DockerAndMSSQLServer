FROM microsoft/mssql-server-linux:2017-latest

RUN mkdir /var/opt/sqlserver

COPY create.sql /var/opt/sqlserver

ENV SA_PASSWORD=P@ssw0rd
ENV ACCEPT_EULA=Y

HEALTHCHECK --interval=10s  \
	CMD /opt/mssql-tools/bin/sqlcmd -S . -U sa -P P@ssw0rd \
		-i /var/opt/sqlserver/create.sql