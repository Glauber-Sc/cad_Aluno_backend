-- public.alunos definition

CREATE TABLE public.alunos (
	aluno_id serial4 NOT NULL,
	aluno_matricula varchar(50) NOT NULL,
	aluno_curso varchar(100) NOT NULL,
	aluno_horario varchar(50) NOT NULL,
	aluno_idade int4 NOT NULL,
	aluno_nome varchar(100) NOT NULL,
	aluno_email varchar(100) NOT NULL,
	aluno_data_nascimento date NOT NULL,
	CONSTRAINT alunos_pkey PRIMARY KEY (aluno_id)
);


