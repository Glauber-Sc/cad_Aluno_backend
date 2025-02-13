# Usar uma imagem base do Ubuntu
FROM ubuntu:latest

# Instalar o PostgreSQL
RUN apt-get update && apt-get install -y postgresql postgresql-contrib

# Configurar o usuário e grupos (este passo pode variar dependendo da configuração específica)
USER postgres

# Iniciar o PostgreSQL e criar um banco de dados
RUN    /etc/init.d/postgresql start &&\
    psql --command "CREATE USER postgres WITH SUPERUSER PASSWORD '1234';" &&\
    createdb -O postgres aluno

# Ajustar as configurações de PostgreSQL para permitir conexões remotas
RUN echo "host all  all    0.0.0.0/0  md5" >> /etc/postgresql/12/main/pg_hba.conf
RUN echo "listen_addresses='*'" >> /etc/postgresql/12/main/postgresql.conf

# Expor a porta 5432
EXPOSE 5432

# Definir o comando para iniciar o servidor PostgreSQL
CMD ["postgres", "-D", "/var/lib/postgresql/data", "-c", "config_file=/etc/postgresql/12/main/postgresql.conf"]
