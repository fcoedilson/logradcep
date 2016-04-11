select * from cep.log_localidade limit 1
select * from cep.log_logradouro  limit 1
select * from cep.log_localidade limit 1
select * from cep.log_bairro limit 1

-- drop view v_logradouros
create or replace view v_logradouros AS
select 
	l.ufe_sg as uf,
	l.log_tipo_logradouro as tipo_lograd,
	l.log_no as nome,
	loc.loc_no as localidade,
	bi.bai_no as bairro_ini,
	bf.bai_no as bairro_fim,
	l.cep,
	l.log_complemento as compl,
	l.log_status_tipo_log as sta_tipo_lograd

from cep.log_logradouro l
	left join cep.log_localidade loc on l.loc_nu_sequencial = loc.loc_nu_sequencial
	left join cep.log_bairro bi on l.bai_nu_sequencial_ini = bi.bai_nu_sequencial
	left join cep.log_bairro bf on l.bai_nu_sequencial_ini = bf.bai_nu_sequencial
where loc.ufe_sg = 'CE';

select * from v_logradouros where uf = 'CE' and localidade = 'Fortaleza';


insert into logradouros(
  uf,
  tipo,
  nome,
  compl,
  cep,
  bairro_ini,
  bairro_fim)

select 
uf,
  tipo_lograd,
  nome,
  compl,
  cep,
  bairro_ini,
  bairro_fim
	

from v_logradouros where uf = 'CE' and localidade = 'Fortaleza'
	