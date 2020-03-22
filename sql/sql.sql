SELECT * FROM public.usuario;

ALTER TABLE public.usuario ALTER COLUMN id_uf_oab TYPE integer;

--Consulta de advogados ativos para o PD
SELECT num_oab, cord_rf_ob FROM public.usuario;

ALTER TABLE usuario ALTER COLUMN id TYPE serial;

--salva psid - cadastra usuário
insert into public.usuario (psid, contexto) values ('2486860938102801','cadastro');

--muda contexto/estado
UPDATE public.usuario
SET contexto = 'cadastro.nome'
WHERE
   psid=2486860938102801;
   
UPDATE public.usuario
SET num_oab = '99'
WHERE
   psid='10';
   
SELECT * FROM public.usuario;
   
--pegar contexto
select contexto from usuario where psid=9; 

--Create table usuario
CREATE TABLE usuario (
	psid text PRIMARY KEY,
	contexto text,
	num_oab text,
	cord_rf_ob integer,
	num_cfc text,
	tipo_usuario text
);

TRUNCATE public.usuario;


