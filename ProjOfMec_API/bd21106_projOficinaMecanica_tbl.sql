sp_help 'CadastroAluno'

Create table Cliente(
[id] INT IDENTITY(1,1) NOT NULL,
[cpfCnpj] VARCHAR(18), 
[nomeCliente] VARCHAR(100), 
[dataNasc] VARCHAR(10), 
[endCliente] VARCHAR(100),
[numCliente] VARCHAR(5),
[bairroCliente] VARCHAR(100),
[cidadeCliente] VARCHAR(100),
[ufCliente] VARCHAR(2),
[cepCliente] VARCHAR(10),
[dataCadCliente] VARCHAR(10),
[rgInscEstadual] VARCHAR(15), 
[celularCliente] VARCHAR(14), 
[telefoneCliente] VARCHAR(13),
[emailCliente] VARCHAR(100), 
[senhaCliente] VARCHAR(10), 
[observacoesCliente] VARCHAR(500), 
);

ALTER TABLE Cliente
ADD CONSTRAINT Pk_idCli PRIMARY KEY CLUSTERED ([id] ASC); 


ALTER TABLE Cliente
ADD CONSTRAINT UQ_cpfCli UNIQUE ([cpfCnpj]);

ALTER TABLE Cliente
ADD CONSTRAINT UQ_nomeCli UNIQUE ([nomeCliente]);

ALTER TABLE Cliente
ADD CONSTRAINT UQ_rgInsEst UNIQUE ([rgInscEstadual]);

ALTER TABLE Cliente
ADD CONSTRAINT UQ_celCli UNIQUE ([celularCliente]);

ALTER TABLE Cliente
ADD CONSTRAINT UQ_emailCli UNIQUE ([emailCliente]);

ALTER TABLE Cliente
ADD CONSTRAINT UQ_senhaCli UNIQUE ([senhaCliente]);


Insert into Cliente (cpfCnpj,nomeCliente,dataNasc, endCliente, numCliente,bairroCliente, cidadeCliente, ufCliente, cepCliente, dataCadCliente,
rgInscEstadual, celularCliente, telefoneCliente, emailCliente, senhaCliente,observacoesCliente) values 
('83622245921', 'Mariana Ester Clarice da Rosa', '09/03/1970', 'Rua José Bonifácio','390', 'Pedrinhas', 'Porto Velho', 'RO', '76801486', '13/11/2022',
'3456997959', '69996078854', '6938171892', 'marianaesterdarosa@alanamaral.com.br','z1zSiRIs7e', null);

Insert into Cliente (cpfCnpj,nomeCliente,dataNasc, endCliente, numCliente,bairroCliente, cidadeCliente, ufCliente, cepCliente, dataCadCliente,
rgInscEstadual, celularCliente, telefoneCliente, emailCliente, senhaCliente,observacoesCliente) values 
('59625613927', 'Priscila Rebeca Lima', '04/01/1948','Rua Laila Osman', '744', 'Jardim Dona Fátima Osman',
'Foz do Iguaçu', 'PR', '85856670', '13/11/2022', '507556410', '45982605894', '4539552965', 'priscila_lima@slb.com.br', 'OyQKfwOWSw', null);

Insert into Cliente (cpfCnpj,nomeCliente,dataNasc, endCliente, numCliente,bairroCliente, cidadeCliente, ufCliente, cepCliente, dataCadCliente,
rgInscEstadual, celularCliente, telefoneCliente, emailCliente, senhaCliente,observacoesCliente) values 
('97727519766', 'Vitor Benício Miguel Baptista', '09/06/1982', 'Quadra Cinco', '634', 'Quarenta Horas(Coqueiro)',
'Ananindeua', 'PA', '67120865', '14/11/2022', '230022716', '91999394712', '9138781873', 'vitor_benicio_baptista@zmail.com',
'FRzQkein3T', null);

Insert into Cliente (cpfCnpj,nomeCliente,dataNasc, endCliente, numCliente,bairroCliente, cidadeCliente, ufCliente, cepCliente, dataCadCliente,
rgInscEstadual, celularCliente, telefoneCliente, emailCliente, senhaCliente,observacoesCliente) values
('81373730200', 'Luiz Tomás Vieira', '23/09/1953', 'Rua do Estaleiro', '736', 'Muruci(Fazendinha)', 'Macapá', 'AP', '68911465',
'13/11/2022', '205594594', '96993848184', '9627515698', 'luiz_vieira@pepsico.com', 'wfMNr3YIeH', null);


/*Pegou como id = 7, via método post SwaggerUI*/
{
  "id": 0,
  "cpfCnpj": "94867529150",
  "nomeCliente": "Renan Bernardo Gael Aparício",
  "dataNasc": "21/06/2003",
  "endCliente": "Quadra 103 Sul Avenida LO 3",
  "numCliente": "166",
  "bairroCliente": "Plano Diretor Sul",
  "cidadeCliente": "Palmas",
  "ufCliente": "TO",
  "cepCliente": "77015036",
  "dataCadCliente": "14/11/2022",
  "rgInscEstadual": "475721391",
  "celularCliente": "63997892106",
  "telefoneCliente": "6325744582",
  "emailCliente": "renan_b_aparicio@gmail.com",
  "senhaCliente": "2PTpgHxu7Z",
  "observacoesCliente": "ao lado das lojas Havan"
}
/*Via SwaggerUI: */
[
  {
    "id": 2,
    "cpfCnpj": "83622245921",
    "nomeCliente": "Mariana Ester Clarice da Rosa",
    "dataNasc": "09/03/1970",
    "endCliente": "Rua José Bonifácio",
    "numCliente": "390",
    "bairroCliente": "Pedrinhas",
    "cidadeCliente": "Porto Velho",
    "ufCliente": "RO",
    "cepCliente": "76801486",
    "dataCadCliente": "13/11/2022",
    "rgInscEstadual": "3456997959",
    "celularCliente": "69996078854",
    "telefoneCliente": "6938171892",
    "emailCliente": "marianaesterdarosa@alanamaral.com.br",
    "senhaCliente": "z1zSiRIs7e",
    "observacoesCliente": null
  },
  {
    "id": 3,
    "cpfCnpj": "59625613927",
    "nomeCliente": "Priscila Rebeca Lima",
    "dataNasc": "04/01/1948",
    "endCliente": "Rua Laila Osman",
    "numCliente": "744",
    "bairroCliente": "Jardim Dona Fátima Osman",
    "cidadeCliente": "Foz do Iguaçu",
    "ufCliente": "PR",
    "cepCliente": "85856670",
    "dataCadCliente": "13/11/2022",
    "rgInscEstadual": "507556410",
    "celularCliente": "45982605894",
    "telefoneCliente": "4539552965",
    "emailCliente": "priscila_lima@slb.com.br",
    "senhaCliente": "OyQKfwOWSw",
    "observacoesCliente": null
  },
  {
    "id": 4,
    "cpfCnpj": "97727519766",
    "nomeCliente": "Vitor Benício Miguel Baptista",
    "dataNasc": "09/06/1982",
    "endCliente": "Quadra Cinco",
    "numCliente": "634",
    "bairroCliente": "Quarenta Horas(Coqueiro)",
    "cidadeCliente": "Ananindeua",
    "ufCliente": "PA",
    "cepCliente": "67120865",
    "dataCadCliente": "14/11/2022",
    "rgInscEstadual": "230022716",
    "celularCliente": "91999394712",
    "telefoneCliente": "9138781873",
    "emailCliente": "vitor_benicio_baptista@zmail.com",
    "senhaCliente": "FRzQkein3T",
    "observacoesCliente": null
  },
  {
    "id": 5,
    "cpfCnpj": "81373730200",
    "nomeCliente": "Luiz Tomás Vieira",
    "dataNasc": "23/09/1953",
    "endCliente": "Rua do Estaleiro",
    "numCliente": "736",
    "bairroCliente": "Muruci(Fazendinha)",
    "cidadeCliente": "Macapá",
    "ufCliente": "AP",
    "cepCliente": "68911465",
    "dataCadCliente": "13/11/2022",
    "rgInscEstadual": "205594594",
    "celularCliente": "96993848184",
    "telefoneCliente": "9627515698",
    "emailCliente": "luiz_vieira@pepsico.com",
    "senhaCliente": "wfMNr3YIeH",
    "observacoesCliente": null
  },
  {
    "id": 7,
    "cpfCnpj": "94867529150",
    "nomeCliente": "Renan Bernardo Gael Aparício",
    "dataNasc": "21/06/2003",
    "endCliente": "Quadra 103 Sul Avenida LO 3",
    "numCliente": "166",
    "bairroCliente": "Plano Diretor Sul",
    "cidadeCliente": "Palmas",
    "ufCliente": "TO",
    "cepCliente": "77015036",
    "dataCadCliente": "14/11/2022",
    "rgInscEstadual": "475721391",
    "celularCliente": "63997892106",
    "telefoneCliente": "6325744582",
    "emailCliente": "renan_b_aparicio@gmail.com",
    "senhaCliente": "2PTpgHxu7Z",
    "observacoesCliente": "ao lado das lojas Havan"
  }
]

select * from Cliente

-------------------------------------
/*Tabela Veiculo*/

Create table Veiculo
(
[id] INT IDENTITY(1,1) NOT NULL,
[idCliente] INT, 
[tipoVeiculo] VARCHAR(100),
[placa] VARCHAR(10), 
[modelo] VARCHAR(100), 
[ano] VARCHAR(10),
[dataEntVeiculo] VARCHAR(20),
);

ALTER TABLE Veiculo
ADD CONSTRAINT Pk_idVei PRIMARY KEY CLUSTERED ([id] ASC);


ALTER TABLE Veiculo
ADD CONSTRAINT fk_idCliVei FOREIGN KEY ([idCliente]) references Cliente ([id])

ALTER TABLE Veiculo
ADD CONSTRAINT UQ_placaVei UNIQUE ([placa]);

ALTER TABLE Veiculo
ADD CONSTRAINT UQ_modeloVei UNIQUE ([modelo]);

Select * from Veiculo

/*Inserido via SwaggerUI*/
[
  {
    "id": 1,
    "idCliente": 2,
    "tipoVeiculo": "carro",
    "placa": "NAB8817",
    "modelo": "Buggy IV e V - Bugre",
    "ano": "string",
    "dataEntVeiculo": "14/11/2022"
  },
  {
    "id": 2,
    "idCliente": 3,
    "tipoVeiculo": "Carro",
    "placa": "NAF0646",
    "modelo": "Elan S2 1.6 16V - Lotus",
    "ano": "1995",
    "dataEntVeiculo": "14/11/2022"
  },
  {
    "id": 3,
    "idCliente": 4,
    "tipoVeiculo": "Moto",
    "placa": "HZU5370",
    "modelo": "YS 250 FAZER L EDITION - YAMAHA",
    "ano": "2017",
    "dataEntVeiculo": "14/11/2022"
  },
  {
    "id": 4,
    "idCliente": 5,
    "tipoVeiculo": "Moto",
    "placa": "DS5GEW2",
    "modelo": "SOFTAIL SPORT GLIDE FLSB - HARLEY DAVIDSON",
    "ano": "2022",
    "dataEntVeiculo": "14/11/2022"
  },
  {
    "id": 5,
    "idCliente": 7,
    "tipoVeiculo": "caminhão",
    "placa": "GKT9391",
    "modelo": "HD78 3.0 16V 155cv(DIESEL) 2P - HYUNDAI",
    "ano": "2012",
    "dataEntVeiculo": "14/11/2022"
  }
]
---------------------------------------------------------------
/* Tabela Mecanico*/

Create table Mecanico
(
[id] INT IDENTITY(1,1) NOT NULL,
[cpfMecanico] VARCHAR(14),  
[nomeMecanico] VARCHAR(100), 
[endMecanico] VARCHAR(100), 
[numMecanico] VARCHAR(5),
[bairroMecanico] VARCHAR(100),
[cidadeMecanico] VARCHAR(100),
[ufMecanico] VARCHAR(2),
[cepMecanico] VARCHAR(10),
[dataCadMecanico] VARCHAR(10),
[celMecanico] VARCHAR(20), 
[telMecanico] VARCHAR(20),
[emailMecanico] VARCHAR(100),
[senhaMecanico] VARCHAR(10),
[observMecanico] VARCHAR(500)
);

ALTER TABLE Mecanico
ADD CONSTRAINT PK_idMec PRIMARY KEY CLUSTERED ([id] ASC);

ALTER TABLE Mecanico
ADD CONSTRAINT UQ_cpfMec UNIQUE ([cpfMecanico]);

ALTER TABLE Mecanico
ADD CONSTRAINT UQ_nomeMec UNIQUE ([nomeMecanico]);

ALTER TABLE Mecanico
ADD CONSTRAINT UQ_celMec UNIQUE ([celMecanico]);

ALTER TABLE Mecanico
ADD CONSTRAINT UQ_emailMec UNIQUE ([emailMecanico]);

ALTER TABLE Mecanico
ADD CONSTRAINT UQ_senhaMec UNIQUE ([senhaMecanico]);

/*Adicionado via SwaggerUI*/
[
  {
    "id": 1,
    "cpfMecanico": "33082704638",
    "nomeMecanico": "Tatiane Sophia Druomond",
    "endMecanico": "Rua Joao Felipe Santiago",
    "numMecanico": "461",
    "bairroMecanico": "Rosa dos Ventos",
    "cidadeMecanico": "Parnamirim",
    "ufMecanico": "RN",
    "cepMecanico": "59141570",
    "dataCadMecanico": "13/11/2022",
    "celMecanico": "84999309819",
    "telMecanico": "8437802327",
    "emailMecanico": "tatiane_sophia_drumond@eton.com.br",
    "senhaMecanico": "ZBoQhCOAub",
    "observMecanico": "primeira mecanica"
  },
  {
    "id": 2,
    "cpfMecanico": "59764638783",
    "nomeMecanico": "Noah Nicolas Nathan Freitas",
    "endMecanico": "Travessa Caubi",
    "numMecanico": "533",
    "bairroMecanico": "Barra do Ceará",
    "cidadeMecanico": "Fortaleza",
    "ufMecanico": "CE",
    "cepMecanico": "60331102",
    "dataCadMecanico": "13/11/2022",
    "celMecanico": "85983938516",
    "telMecanico": "8528313960",
    "emailMecanico": "noah_nicolas_freitas@right.com.br",
    "senhaMecanico": "J1UijWIZ2Z",
    "observMecanico": "rg=243067896"
  },
  {
    "id": 3,
    "cpfMecanico": "41210593017",
    "nomeMecanico": "Breno Ian Farenzo",
    "endMecanico": "Travessa 6",
    "numMecanico": "902",
    "bairroMecanico": "Remedios",
    "cidadeMecanico": "Santana",
    "ufMecanico": "AP",
    "cepMecanico": "68927039",
    "dataCadMecanico": "13/11/2022",
    "celMecanico": "96997255203",
    "telMecanico": "9639712397",
    "emailMecanico": "brenoianfarenzo@abrangenciacorretora.com.br",
    "senhaMecanico": "Zo6i6LRRHs",
    "observMecanico": "rg=305950198, nasc: 03/02/1986"
  },
  {
    "id": 4,
    "cpfMecanico": "72917679520",
    "nomeMecanico": "Yago Fernando Diego de Paula",
    "endMecanico": "Avenida Borges de Medeiros",
    "numMecanico": "1501",
    "bairroMecanico": "Praia de Belas",
    "cidadeMecanico": "Porto Alegre",
    "ufMecanico": "RS",
    "cepMecanico": "90119900",
    "dataCadMecanico": "13/11/2022",
    "celMecanico": "51981494646",
    "telMecanico": "5139306001",
    "emailMecanico": "yago-depaula79@zipmail.com.br",
    "senhaMecanico": "dsUFCUbIIW",
    "observMecanico": "rg=192124845, nasc: 01/06/1987, apto 604F"
  },
  {
    "id": 5,
    "cpfMecanico": "57379701673",
    "nomeMecanico": "Isabelle Aparecida Manuela Fogaça",
    "endMecanico": "Rua Paraguacu",
    "numMecanico": "485",
    "bairroMecanico": "das Laranjeiras",
    "cidadeMecanico": "Serra",
    "ufMecanico": "ES",
    "cepMecanico": "29175617",
    "dataCadMecanico": "13/11/2022",
    "celMecanico": "27993359808",
    "telMecanico": "2738224260",
    "emailMecanico": "isabelleaparecidafogaca@dmail.com",
    "senhaMecanico": "GcMIaQMQsZ",
    "observMecanico": "rg=388947901, nasc=05/12/1993"
  }
]

------------------------------------------------------------------------------------
/*TABELA SERVICO*/

Create table Servico
(
[id] INT IDENTITY(1,1) NOT NULL,
[nomeServico] VARCHAR(100), 
[preco] VARCHAR(10),
[tipoServico] VARCHAR(100),
[dataCadServico] VARCHAR(100)
);

ALTER TABLE Servico
ADD CONSTRAINT PK_idServ PRIMARY KEY CLUSTERED ([id] ASC);

ALTER TABLE Servico
ADD CONSTRAINT UQ_nomeServ UNIQUE ([nomeServico]);

ALTER TABLE Servico
ADD CONSTRAINT UQ_tipoServ UNIQUE ([tipoServico]);

select * from Servico

UPDATE Servico
SET tipoServico = 'manutencao de acessorios de caminhao - 01'
where id = 10

/*Inseridos via SwaggerUI*/
[
  {
    "id": 3,
    "nomeServico": "amortecedor de suspensao",
    "preco": "145.97",
    "tipoServico": "manutencao de peca de carro - 01",
    "dataCadServico": "14/11/2022"
  },
  {
    "id": 4,
    "nomeServico": "baterias de moto YAMAHA CG",
    "preco": "528.45",
    "tipoServico": "manutencao de pecas de moto - 01",
    "dataCadServico": "14/11/2022"
  },
  {
    "id": 5,
    "nomeServico": "cabos de freio",
    "preco": "432.88",
    "tipoServico": "manutencao de pecas de moto - 02 ",
    "dataCadServico": "14/11/2022"
  },
  {
    "id": 6,
    "nomeServico": "pistao de liga leve de aluminio",
    "preco": "120.50",
    "tipoServico": "manutencao de pecas de carro - 02",
    "dataCadServico": "14/11/2022"
  },
  {
    "id": 7,
    "nomeServico": "caixa de fusivel",
    "preco": "384.95",
    "tipoServico": "manutencao de pecas de caminhao - 01",
    "dataCadServico": "14/11/2022"
  },
  {
    "id": 8,
    "nomeServico": "pelicula fosca resistente a agua",
    "preco": "5125.56",
    "tipoServico": "manutencao de acessorios de carro - 01",
    "dataCadServico": "14/11/2022"
  },
  {
    "id": 9,
    "nomeServico": "pelicula fosca anti-agua e anti-risco",
    "preco": "2346.52",
    "tipoServico": "manutencao de acessorios de moto - 01",
    "dataCadServico": "14/11/2022"
  },
  {
    "id": 10,
    "nomeServico": "pelicula fosca resistente a areia, agua e riscos",
    "preco": "15286.29",
    "tipoServico": "manutencao de acessorios de caminhao - 01",
    "dataCadServico": "14/11/2022"
  }
]
----------------------------------------------------------------------
/*TABELA ORCAMENTO*/
/*UNIU A TABELA ORCAMENTO COM A DE PAGAMENTO PRA EVITAR O ERRO
DE REFERENCIA CRUZADA: para preencher a tabela de orcamento precisava
ter o id de pagamento; e para ter a tabela de pagamento precisava das
informações da tabela de orcamento*/

Create table Orcamento
(
[id] INT IDENTITY(1,1) NOT NULL, 
[idServico] INT,  
[valorUniOrc] VARCHAR(10),
[quantidade] VARCHAR (10),
[valorTotalOrc] VARCHAR(10),
[OrcTipoServico] VARCHAR(100),
[OrcNomeServico] VARCHAR(100),
[idCliente] INT, 
[idMecanico] INT, 
[dataCadOrcamento] VARCHAR(20),
[dataAprovOrcamento] VARCHAR(20),
[dataValidadeOrcamento] VARCHAR(20),
[PagoEm] VARCHAR (20),
[idPagamento] INT, 
[formaPgto] VARCHAR(100),
[valorPago] VARCHAR(100),
[dataCadPgto] VARCHAR(20),
[dataValPgto] VARCHAR(20),
[observacoesOrcamento] VARCHAR (500)
);

ALTER TABLE Orcamento
ADD CONSTRAINT Pk_idOrc PRIMARY KEY CLUSTERED ([id] ASC);

ALTER TABLE Orcamento
ADD CONSTRAINT fk_idSvOrc FOREIGN KEY ([idServico]) references Servico ([id]);

ALTER TABLE Orcamento
ADD CONSTRAINT fk_tipoSvOrc FOREIGN KEY ([OrcTipoServico]) references Servico ([tipoServico]);

ALTER TABLE Orcamento
ADD CONSTRAINT fk_nomeSvOrc FOREIGN KEY ([OrcNomeServico]) references Servico ([nomeServico]);

ALTER TABLE Orcamento
ADD CONSTRAINT fk_idCliOrc FOREIGN KEY ([idCliente]) references Cliente ([id]);

ALTER TABLE Orcamento
ADD CONSTRAINT fk_idMecOrc FOREIGN KEY ([idMecanico]) references Mecanico ([id]);

ALTER TABLE Orcamento
ADD CONSTRAINT UQ_idPagOrc UNIQUE ([idPagamento]);

Insert into Orcamento (idServico, valorUniOrc, quantidade, valorTotalOrc, OrcTipoServico,
OrcNomeServico, idCliente, idMecanico, dataCadOrcamento, dataAprovOrcamento, dataValidadeOrcamento,
PagoEm, idPagamento, formaPgto, valorPago, dataCadPgto, dataValPgto, observacoesOrcamento)
values
(3, '145.97', '4', '583.88', 'manutencao de peca de carro - 01', 'amortecedor de suspensao',2, 2, '13/11/2022', '13/11/2022', '20/11/2022',
'13/11/2022', 1, 'cartao de credito 3x', '583.88', '13/11/2022', '21/11/2022', 'pago em 3x iguais de 142.63 reais');

Insert into Orcamento (idServico, valorUniOrc, quantidade, valorTotalOrc, OrcTipoServico,
OrcNomeServico, idCliente, idMecanico, dataCadOrcamento, dataAprovOrcamento, dataValidadeOrcamento,
PagoEm, idPagamento, formaPgto, valorPago, dataCadPgto, dataValPgto, observacoesOrcamento)
values
(6, '120.50', '5', '602.50', 'manutencao de pecas de carro - 02', 'pistao de liga leve de aluminio', 3, 1, '13/11/2022', '13/11/2022', 
'20/11/2022', '14/11/2022', 2, 'cartao de credito 2x', '602.50', '14/11/2022', '21/11/2022', 'pago em 2x iguais de 301.25 reais');

select * from Servico;

Insert into Orcamento (idServico, valorUniOrc, quantidade, valorTotalOrc, OrcTipoServico,
OrcNomeServico, idCliente, idMecanico, dataCadOrcamento, dataAprovOrcamento, dataValidadeOrcamento,
PagoEm, idPagamento, formaPgto, valorPago, dataCadPgto, dataValPgto, observacoesOrcamento)
values
(5, '432.88', '2', '865.76', 'manutencao de pecas de moto - 02', 'cabos de freio', 5, 3, '14/11/2022', '15/11/2022', '21/11/2022',
'15/11/2022', 3, 'cartao de credito 3x', '865.76', '15/11/2022', '21/11/2022', 'pago em 3x iguais de 288.59 reais');

Insert into Orcamento (idServico, valorUniOrc, quantidade, valorTotalOrc, OrcTipoServico,
OrcNomeServico, idCliente, idMecanico, dataCadOrcamento, dataAprovOrcamento, dataValidadeOrcamento,
PagoEm, idPagamento, formaPgto, valorPago, dataCadPgto, dataValPgto, observacoesOrcamento)
values
(4,'528.45', '2', '1056.90', 'manutencao de pecas de moto - 01', 'baterias de moto YAMAHA CG',4, 4, '14/11/2022', '14/11/2022', '21/11/2022',
'14/11/2022', 4, 'cartão de crédito 3x','1056.90', '14/11/2022', '21/11/2022', 'pago em 3x iguais de 352.30 reais');

Insert into Orcamento (idServico, valorUniOrc, quantidade, valorTotalOrc, OrcTipoServico,
OrcNomeServico, idCliente, idMecanico, dataCadOrcamento, dataAprovOrcamento, dataValidadeOrcamento,
PagoEm, idPagamento, formaPgto, valorPago, dataCadPgto, dataValPgto, observacoesOrcamento)
values
(10, '15286.29', '1', '15286.29', 'manutencao de acessorios de caminhao - 01', 'pelicula fosca resistente a areia, agua e riscos', 7, 5, 
'14/11/2022', '14/11/2022','21/11/2022', '14/11/2022', 5, 'cartão de credito 8x', '15286.29', '14/11/2022', '21/11/2022', 'pago em 8x iguais de 1910.78 reais');


select * from Orcamento
---------------------------------------------------------------------------

/*TABELA REPARO*/

Create table Reparo
(
[id] INT IDENTITY(1,1) NOT NULL,
[RepNomeCliente] VARCHAR(100), 
[RepNomeMecanico] VARCHAR (100), 
[RepModeloVeiculo] VARCHAR(100), 
[RepPlacaVeiculo] VARCHAR(10), 
[RepIdOrcamento] INT, 
[AlteracaoFuncional] VARCHAR(500), 
[Diagnostico] VARCHAR(500),
[DataCadastroReparo] VARCHAR(20)
);

ALTER TABLE Reparo
ADD CONSTRAINT Pk_idRep PRIMARY KEY CLUSTERED ([id] ASC);

select * from Cliente
ALTER TABLE Reparo
ADD CONSTRAINT fk_nomeCliRep FOREIGN KEY ([RepNomeCliente]) references Cliente ([nomeCliente]);


ALTER TABLE Reparo
ADD CONSTRAINT fk_NomeMecRep FOREIGN KEY ([RepNomeMecanico]) references Mecanico ([nomeMecanico]);

ALTER TABLE Reparo
ADD CONSTRAINT fk_ModeloVeiRep FOREIGN KEY ([RepModeloVeiculo]) references Veiculo ([modelo]);

ALTER TABLE Reparo
ADD CONSTRAINT fk_PlacaVeiRep FOREIGN KEY ([RepPlacaVeiculo]) references Veiculo ([placa]);

ALTER TABLE Reparo
ADD CONSTRAINT fk_IdOrcRep FOREIGN KEY ([RepIdOrcamento]) references Orcamento ([id]);

Insert into Reparo (RepNomeCliente, RepNomeMecanico, RepModeloVeiculo, RepPlacaVeiculo,RepIdOrcamento, AlteracaoFuncional, Diagnostico, DataCadastroReparo) values
('Mariana Ester Clarice da Rosa','Noah Nicolas Nathan Freitas','Buggy IV e V - Bugre', 
'NAB8817', 4,'barulho de eixo solto com pneus rodando quadrado',
 'trocar suspensao', '13/11/2022');

Insert into Reparo (RepNomeCliente, RepNomeMecanico, RepModeloVeiculo, RepPlacaVeiculo,
RepIdOrcamento, AlteracaoFuncional, Diagnostico, DataCadastroReparo) values
('Priscila Rebeca Lima', 'Tatiane Sophia Druomond', 'Elan S2 1.6 16V - Lotus',
'NAF0646', 5, 'fraco rendimento no combustivel', 'trocar pistao',
'13/11/2022');

Insert into Reparo (RepNomeCliente, RepNomeMecanico, RepModeloVeiculo, RepPlacaVeiculo,
RepIdOrcamento, AlteracaoFuncional, Diagnostico, DataCadastroReparo) values
('Vitor Benício Miguel Baptista', 'Yago Fernando Diego de Paula',
 'YS 250 FAZER L EDITION - YAMAHA', 'HZU5370',
8, 'moto nao liga', 'trocar bateria', '14/11/2022');

Insert into Reparo (RepNomeCliente, RepNomeMecanico, RepModeloVeiculo, RepPlacaVeiculo,
RepIdOrcamento, AlteracaoFuncional, Diagnostico, DataCadastroReparo) values
('Renan Bernardo Gael Aparício', 'Isabelle Aparecida Manuela Fogaça', 'HD78 3.0 16V 155cv(DIESEL) 2P - HYUNDAI',
'GKT9391', 9, 'cabine com lataria riscada', 'trocar pintura e colocar pelicula', '14/11/2022');

Insert into Reparo (RepNomeCliente, RepNomeMecanico, RepModeloVeiculo, RepPlacaVeiculo,
RepIdOrcamento, AlteracaoFuncional, Diagnostico, DataCadastroReparo) values
('Luiz Tomás Vieira', 'Breno Ian Farenzo', 'SOFTAIL SPORT GLIDE FLSB - HARLEY DAVIDSON',
'DS5GEW2', 7, 'freio sem cabo', 'trocar freio', '15/11/2022');

select * from cliente

select * from veiculo

select * from orcamento

select * from reparo

select * from mecanico

select * from usuario

------------------------------------------------------
/*TESTAR ROTAS DE LOGIN NA HOME CONTROLLER*/

/*Tive que instalar as versões  abaixo via terminal cmd como Admnistrador:
dotnet add package Microsoft.AspNetCore.Authentication -v 2.2.0,
dotnet add package Microsoft.AspNetCore.Authentication.JwtBearer -v 6.0.11 

--segui os códigos exatos da apostila 04


-- Criei a tabela Usuario:
CREATE TABLE usuario (
[id] INT IDENTITY (1, 1) NOT NULL,
[username] VARCHAR (10) NULL,
[senha] VARCHAR (10) NULL,
[role] VARCHAR (20) NULL,
PRIMARY KEY CLUSTERED ([id] ASC)
);

-- e inseri no banco para testar as rotas da Home Controller
Insert into usuario (username, senha, role) values ('teste', 'teste123', 'teste'); // rota anonima
Insert into usuario (username, senha, role) values ('lunara', 'senha1234', 'mecanico'); //rota login
Insert into usuario (username, senha, role) values ('leandro', 'senha1803', 'mecanico'); //rota login
Insert into usuario (username, senha, role) values ('estefanny', 'senha0501', 'cliente'); // rota login

Para verificar a rota autenticada, puxar o token gerado conforme a apostila 4.

*/

select * from Mecanico
---------------------------------

/*tabelas reformuladas em 15-11-2022 as 20h37min*/

create table Cliente
(
[id] INT IDENTITY(1,1) NOT NULL,
[cpf] VARCHAR(11), 
[nomeCompleto] VARCHAR(100),
[DataNasc] VARCHAR(10), 
[EnderecoCompleto] VARCHAR(200),
[celular] VARCHAR(14),
[email] VARCHAR(100)
);


ALTER TABLE Cliente
ADD CONSTRAINT Pk_idCliente PRIMARY KEY CLUSTERED ([id] ASC)

ALTER TABLE Cliente
ADD CONSTRAINT UQ_cpfCli UNIQUE([cpf]);

/*INSERIDOS VIA SWAGGER UI TABELA CLIENTE*/
/*
[
	{
		"id": 1,
		"cpf": "96604996123",
		"nomeCompleto": "Sara Daiane Maitê Carvalho",
		"dataNasc": "09/04/1948",
		"enderecoCompleto": "Rua Olinto Lorenzon, 677, 98015260, Cruz Alta-RS",
		"celular": "55994455932",
		"email": "sara_daiane_carvalho@zmail.com"
	},
	{
		"id": 2,
		"cpf": "93299919717",
		"nomeCompleto": "João Yuri Sales",
		"dataNasc": "18/05/1966",
		"enderecoCompleto": "Quadra CCSW 6 Lote 2, 847, cep 70680660, Brasilia-DF",
		"celular": "61989157985",
		"email": "joao_sales@yahoo.com"
	},
	{
		"id": 3,
		"cpf": "04876139458",
		"nomeCompleto": "Mariane Emanuelly Nunes",
		"dataNasc": "13/11/1989",
		"enderecoCompleto": "Quadra EQNM 23/25 Bloco A, 872, Ceilandia Sul, cep 72215591, Brasilia-DF",
		"celular": "61994417351",
		"email": "mariane_emanuelly_nunes1@allcor.com.br"
	},
	{
		"id": 4,
		"cpf": "37101462758",
		"nomeCompleto": "Simone Sophia Tereza Rocha",
		"dataNasc": "20/10/2002",
		"enderecoCompleto": "Rua Luiz Lopes Agra, 661, Jatiuca, cep 57036650, Maceio-AL",
		"celular": "82999642059",
		"email": "simone_sp_trocha@ig.com"
	},
	{
		"id": 5,
		"cpf": "86822737642",
		"nomeCompleto": "Lucca Hugo da Motta",
		"dataNasc": "12/05/1992",
		"enderecoCompleto": "Alameda Ibiuna, 794, Jd Lancaster II, cep 85869430, Foz do Iguacu-PR",
		"celular": "45983371762",
		"email": "luccamota3456@ffueh.com"
	}
]
*/

select * from veiculo

---------------------------

Create table Veiculo
([id] INT IDENTITY(1,1) NOT NULL,
[idCliente] INT,
[marca] VARCHAR (100),
[modelo] VARCHAR (100),
[placa] VARCHAR(7),
[tamanho] VARCHAR (100)
);

ALTER TABLE Veiculo
ADD CONSTRAINT PK_idVeiculo PRIMARY KEY CLUSTERED ([id] ASC)

ALTER TABLE Veiculo
ADD CONSTRAINT UQ_placaVeiculo UNIQUE ([placa])

ALTER TABLE Veiculo
ADD CONSTRAINT FK_idCliVei FOREIGN KEY([idCliente]) REFERENCES Cliente ([id])

/*INSERIDOS VIA INSOMNIA TABELA VEICULO*/

/*
[
	{
		"id": 1,
		"idCliente": 1,
		"marca": "GM - Chevrolet",
		"modelo": "Astra 2.0 8V/CD 8V Hatchback 5p - 2004 gasolina ",
		"placa": "LMC5689",
		"tamanho": "carro"
	},
	{
		"id": 3,
		"idCliente": 2,
		"marca": "Jeep",
		"modelo": "Compass Longitude 2.0 4x2 Flex 5p 2021 gasolina",
		"placa": "FYT9574",
		"tamanho": "carro"
	},
	{
		"id": 4,
		"idCliente": 3,
		"marca": "Porsche",
		"modelo": "718 Booster Spyder 4.0 420cv 2022 gasolina",
		"placa": "DLH2756",
		"tamanho": "carro"
	},
	{
		"id": 5,
		"idCliente": 4,
		"marca": "Ducati",
		"modelo": "Monster 796 2014",
		"placa": "WVB1376",
		"tamanho": "moto"
	},
	{
		"id": 6,
		"idCliente": 5,
		"marca": "Harley Davidson",
		"modelo": "Road King Classic FLHRC/Custom FLHRSI 2019",
		"placa": "GQB6243",
		"tamanho": "moto"
	}
]
*/
------------------------------------

Create table OrdemDeServico
([id] INT IDENTITY(1,1) NOT NULL,
[idCliente] INT,
[idVeiculo] INT,
[nomeMecanico] VARCHAR(100),
[defeitoReclamado] VARCHAR (500),
[diagnostico] VARCHAR (500),
[PagoEm] VARCHAR (500)
);

ALTER TABLE OrdemDeServico
ADD CONSTRAINT PK_idOrdDeServ PRIMARY KEY CLUSTERED ([id])

ALTER TABLE OrdemDeServico
ADD CONSTRAINT FK_idCliOrdDeServ FOREIGN KEY ([idCliente]) REFERENCES Cliente ([id])

ALTER TABLE OrdemDeServico
ADD CONSTRAINT FK_idVeiOrdDeServ FOREIGN KEY ([idVeiculo]) REFERENCES Veiculo ([id])

/* INSERIDOS VIA INSOMNIA TABELA ORDEMDESERVICO*/
/*
[
	{
		"id": 1,
		"idCliente": 1,
		"idVeiculo": 1,
		"nomeMecanico": "Lunara Morena Cunha",
		"defeitoReclamado": "barulho no motor",
		"diagnostico": "trocar pistao",
		"pagoEm": "Pago no cartao de credito em 3x iguais de 212.47 na data de 14/11/2022. Total de 637.41 reais"
	},
	{
		"id": 2,
		"idCliente": 2,
		"idVeiculo": 3,
		"nomeMecanico": "Leandro Hugo Nascimento de Freitas",
		"defeitoReclamado": "barulho de roda quadrada",
		"diagnostico": "trocar suspensao",
		"pagoEm": "Pago no cartao de credito em 5x iguais de 153.40 na data de 14/11/2022. Total de 767.00 reais"
	},
	{
		"id": 4,
		"idCliente": 3,
		"idVeiculo": 4,
		"nomeMecanico": "Marcela Almeida Felanzi",
		"defeitoReclamado": "barulho na traseira do carro",
		"diagnostico": "trocar carburador",
		"pagoEm": "Pago no cartao de credito em 3x iguais de 125.80 na data de 15/11/2022. Total de 377.40 reais"
	},
	{
		"id": 5,
		"idCliente": 4,
		"idVeiculo": 5,
		"nomeMecanico": "Luiz Carvalho Ferreira",
		"defeitoReclamado": "freio não funciona",
		"diagnostico": "trocar cabo de freio",
		"pagoEm": "Pago no cartao de credito em 4x iguais de 291.74 na data de 15/11/2022. Total de 1166.96 reais"
	},
	{
		"id": 6,
		"idCliente": 5,
		"idVeiculo": 6,
		"nomeMecanico": "Isabelle Silva de Camargo",
		"defeitoReclamado": "lataria com riscos",
		"diagnostico": "fazer pintura e envelopagem",
		"pagoEm": "Pago no cartao de credito em 8x iguais de 460.30 na data de 15/11/2022. Total de 3682.40 reais"
	}
]
*/

-----------------------------------

Create table Usuario
([id] INT IDENTITY(1,1) NOT NULL,
[nomeCompleto] VARCHAR (100),
[cpf] VARCHAR(11),
[celular] VARCHAR(14),
[email] VARCHAR(100),
[senha] VARCHAR(10)
);

ALTER TABLE Usuario
ADD CONSTRAINT PK_idUsuario PRIMARY KEY CLUSTERED ([id])


ALTER TABLE Usuario
ADD CONSTRAINT UQ_cpfUsuario UNIQUE ([cpf])

/* INSERIDOS VIA INSOMNIA TABELA USUARIO*/

/*
	[
	{
		"id": 2,
		"nomeCompleto": "Maria de Fatima Silva",
		"cpf": "45455411780",
		"celular": "71993457684",
		"email": "mariafsilva23@gmail.com",
		"senha": "S7uB2Q5hg6"
	},
	{
		"id": 3,
		"nomeCompleto": "Lorena Silveira Aquino",
		"cpf": "36355033637",
		"celular": "19992746329",
		"email": "lorenaquinoadv@gmha.com",
		"senha": "2D0hIj7s38"
	},
	{
		"id": 5,
		"nomeCompleto": "Fabio Almeida Darlote",
		"cpf": "78671636119",
		"celular": "25991036785",
		"email": "fabiodarlotemec@zipmail.com",
		"senha": "B8hOp485a2"
	},
	{
		"id": 6,
		"nomeCompleto": "Daiana Gouveia Lima",
		"cpf": "01732841837",
		"celular": "35987371286",
		"email": "daianagouveiaprof@yahoo.com",
		"senha": "L8n67R90WA"
	},
	{
		"id": 7,
		"nomeCompleto": "Batman da Silva Felix",
		"cpf": "33143152605",
		"celular": "17994789537",
		"email": "batmanfelixdev1@yahoo.com",
		"senha": "D7h2Mq4z8U"
	}
]
*/

select * from OrdemDeServico


ALTER TABLE OrdemDeServico
ADD  [DataPgto] VARCHAR(100)

ALTER TABLE OrdemDeServico
ADD [FormaPgto] VARCHAR(100)

ALTER TABLE OrdemDeServico
ADD [ValorPgto] VARCHAR(100)

ALTER TABLE OrdemDeServico
DROP COLUMN [PagoEm] 

ID 1 = Pago no cartao de credito em 3x iguais de 212.47 na data de 14/11/2022. Total de 637.41 reais
ID 2 = Pago no cartao de credito em 5x iguais de 153.40 na data de 14/11/2022. Total de 767.00 reais
ID 4 = Pago no cartao de credito em 3x iguais de 125.80 na data de 15/11/2022. Total de 377.40 reais
ID 5 = Pago no cartao de credito em 4x iguais de 291.74 na data de 15/11/2022. Total de 1166.96 reais
ID 6 = Pago no cartao de credito em 8x iguais de 460.30 na data de 15/11/2022. Total de 3682.40 reais

select * from OrdemDeServico

UPDATE OrdemDeServico
SET DataPgto = '14/11/2022'
WHERE id < 3

UPDATE OrdemDeServico
SET DataPgto = '15/11/2022'
WHERE id > 3

UPDATE OrdemDeServico
SET FormaPgto = 'cartão de crédito'
WHERE id < 7

UPDATE OrdemDeServico
SET ValorPgto = '3x de 212,47 = 637,41 reais'
Where id = 1

UPDATE OrdemDeServico
SET ValorPgto = '5x de 153,40 = 767,00 reais'
Where id = 2

UPDATE OrdemDeServico
SET ValorPgto = '3x de 125,80 = 377,40 reais'
Where id = 4

select * from OrdemDeServico

UPDATE OrdemDeServico
SET ValorPgto = '4x de 291,74 = 1166,96 reais'
Where id = 5

UPDATE OrdemDeServico
SET ValorPgto = '8x de 460,30 = 3682,40 reais'
WHERE id = 6

select * from OrdemDeServico

select * from Veiculo

ALTER TABLE Veiculo
ADD [ano] VARCHAR (4), [combustivel] VARCHAR(100)

UPDATE Veiculo
SET combustivel = 'gasolina'
WHERE id = 4


UPDATE Veiculo
SET combustivel = 'álcool'
WHERE id > 6

UPDATE Veiculo
SET combustivel = 'flex'
WHERE id = 6

UPDATE Veiculo
SET ano = '2004'
WHERE id = 1

UPDATE Veiculo
SET modelo = 'Astra 2.0 8V/CD 8V Hatchback 5p'
WHERE id = 1

UPDATE Veiculo
SET modelo = 'Compass Longitude 2.0 4x2 Flex 5p', ano = '2021'
WHERE id = 3

select * from Veiculo

UPDATE Veiculo
SET modelo = '718 Booster Spyder 4.0 420cv ', ano = '2022'
WHERE id = 4

UPDATE Veiculo
SET modelo = 'Monster 796', ano = '2014'
WHERE id = 5

UPDATE Veiculo
SET modelo = 'Road King Classic FLHRC/Custom FLHRSI', ano = '2019'
WHERE id = 6

UPDATE Veiculo
SET modelo = 'Parati 100 Mi 16V 4p', ano = '2001', combustivel = 'gasolina'
WHERE id = 7


UPDATE Veiculo
SET modelo = 'M3 Coupê 4.0 32V', ano = '2013', combustivel = 'gasolina'
WHERE id = 29

UPDATE Veiculo
SET modelo = 'TDM 850', ano = '1997', marca = 'Yamaha'
WHERE id = 30

UPDATE Veiculo
SET modelo = 'CBR 500R', ano = '2017', marca = 'Honda' 
WHERE id = 32

select * from Veiculo

UPDATE Veiculo
SET modelo = 'JETTA GLI 350 TSI 2.0 16V 4p Aut.', marca = 'VM - VolksWagen', 
tamanho = 'carro', ano = '2022', combustivel = 'gasolina', placa = 'E6D90QB'   
WHERE id = 33

/*Tiramos as chaves estrangeiras*/

select * from OrdemDeServico
-----------------------------------------------------------------------------

/*TABELAS QUE VAMOS CRIAR JUSTAMENTE PARA GUARDAR O REGISTRO, 
LOGIN E GERENCIAMENTO DE TOKEN E REFRESH TOKEN */

/*Tabela de gerenciamento de token:*/
Create table UserLoginResponse
(
[Id] INT IDENTITY(1,1) NOT NULL,
[AccessToken] VARCHAR(500) NOT NULL,
[RefreshToken] VARCHAR (500) NOT NULL,
[ExpiresIn] INT 
);

Alter table UserLoginResponse
add constraint Pk_IdUserLoginRes Primary Key Clustered([Id]);

Alter table UserLoginResponse
Add Constraint Uq_RefTok  Unique ([RefreshToken]);

------------------------------
/*Tabela de registro do Usuario*/
Create table UserRegister
(
[Id] INT IDENTITY(1,1) NOT NULL,
[UserNameReg] VARCHAR (100) NOT NULL, 
[Email] VARCHAR(100) NOT NULL,
[Password] VARCHAR(10) NOT NULL,
[ConfirmPassword] VARCHAR(10) NOT NULL
);



Alter table UserRegister
Add constraint Pk_IdUsReg Primary Key Clustered ([Id]);

Alter table UserRegister
Add constraint Uq_UserUsReg Unique ([UserNameReg]);

Alter table UserRegister
Add constraint Uq_EmailUsReg Unique ([Email]);

Alter table UserRegister
Add constraint Uq_PassUsReg Unique ([Password]);

Alter table UserRegister
Add constraint Uq_ConfirmPassUsReg Unique ([ConfirmPassword]);

--------------------------------

/*Tabela de login do Usuário */

Create table UserLogin
(
[Id] INT IDENTITY(1,1) NOT NULL,
[Email] VARCHAR(100) NOT NULL,
[Password] VARCHAR(10) NOT NULL
);

Alter table UserLogin
add constraint Pk_IdUsLogin Primary Key Clustered([Id]);

Alter table UserLogin
add constraint Uq_EmailUsLogin Unique ([Email]);

Alter table UserLogin
add constraint Uq_PassUsLogin Unique ([Password]);

------------------
/*Tabela de RefreshToken atualizado*/

Create table Token
(
[Id] INT IDENTITY(1,1) NOT NULL,
[RefreshToken] VARCHAR(500) NOT NULL
);

Alter table Token
add constraint Pk_IdToken Primary Key ([Id]);

Alter table Token
add constraint Uq_RefTokToken Unique ([RefreshToken]);

---------------------------------------
/*Tabela pro usuario escolher entre ser cliente ou mecanico na regra*/

Create table Regra
([Id] INT IDENTITY(1,1) NOT NULL,
[RoleName] VARCHAR (100) NOT NULL,
[UserNameRole] VARCHAR(100) NOT NULL 
);

Alter table Regra
add constraint Pk_IdRegra Primary Key Clustered([Id]);

Alter table Regra
add constraint Uq_RoleNameRegra Unique ([RoleName]);

Alter table Regra
add constraint Uq_UserNameRegra Unique ([UserNameRole]);

select * from Usuario

alter table Usuario
add [role] VARCHAR (100);

Update Usuario
set  role = 'cliente'
where id < 6

Update Usuario
set role = 'mecanico'
where id >= 6

------------------------------------------------------------

select * from Register

sp_help 'Register'
Alter table Usuario
alter column [email] VARCHAR(100) NOT NULL;

select * from Usuario

Alter table Register
add [role] VARCHAR(8);

/*CREATE TABLE usuario (
[id] INT IDENTITY (1, 1) NOT NULL,
[username] VARCHAR (10) NULL,
[senha] VARCHAR (10) NULL,
[role] VARCHAR (20) NULL,
PRIMARY KEY CLUSTERED ([id] ASC)
);*/

Insert into usuario (username, senha, role) values ('teste', 'teste123', 'teste');
Insert into usuario (username, senha, role) values ('lunara', 'doggo123', 'mecanico');
Insert into usuario (username, senha, role) values ('leandro', 'docinho123', 'cliente');

Insert into Register (username, senha, email) values ('teste', 'teste123', 'teste@example.com');
Insert into Register (username, senha, email) values ('lunara', 'doggo123', 'lunara.cunha@yahoo.com');
Insert into Register (username, senha, email) values ('leandro', 'docinho123', 'leandrohufe@gmail.com');

UPDATE Register
set role = 'mecanico'
where id = 5


sp_help 'Usuario'

ALTER TABLE Usuario
add constraint UQ_usUsuario UNIQUE ([username]);

ALTER TABLE Usuario
add constraint UQ_senhaUsuario UNIQUE ([senha]);

ALTER TABLE Usuario
add constraint UQ_emailUsuario UNIQUE ([email]);

sp_help 'Register'

ALTER TABLE Register
add constraint UQ_userNameReg UNIQUE ([username]);

ALTER TABLE Register
add constraint UQ_senhaReg UNIQUE ([senha]);


ALTER TABLE Register
add constraint UQ_emailReg UNIQUE ([email]);

select * from Usuario


update Usuario
set role = 'Cliente', isMecanico = 'false', email = 'teste@example.com'
where id = 1

update Usuario
set role = 'Mecanico', isMecanico = 'true', email = 'lunaracunha@yahoo.com'
where id = 2

update Usuario
set role = 'Cliente', isMecanico = 'false', email = 'leandrohufe@gmail.com'
where id = 3


select * from Register

update Register
set IsMecanico = 'false'
where id = 4 

update Register
set IsMecanico = 'false'
where id = 6

update Register
set IsMecanico = 'true'
where id = 5


update Register
set role = 'Cliente'
where id = 6


update Register
set role = 'Cliente'
where id = 4


update Register
set role = 'Mecanico'
where id = 5

select * from Usuario

select * from Register

Update Register
set isMecanico = 'false'
where id = 7

select * from Usuario

select * from Register

Update Register
set isMecanico = 'false'
where id = 7


Update Usuario
set role = 'cliente'
where role = 'Cliente'

Update Usuario
set role = 'mecanico'
where role = 'Mecanico'

select * from Register

Update Register
set role = 'cliente'
where role = 'Cliente'


Update Register
set role  = 'mecanico'
where role = 'Mecanico'