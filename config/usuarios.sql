-- public.usuarios definition



CREATE TABLE public.usuarios (
	usuario_id serial4 NOT NULL,
	usuario_nome varchar(100) NOT NULL,
	usuario_email varchar(100) NOT NULL,
	usuario_senha bpchar(32) NOT NULL,
	usuario_nascimento date NOT NULL,
	usuario_ativo bool NOT NULL,
	CONSTRAINT usuarios_pkey PRIMARY KEY (usuario_id),
	CONSTRAINT usuarios_usuario_email_key UNIQUE (usuario_email)
);