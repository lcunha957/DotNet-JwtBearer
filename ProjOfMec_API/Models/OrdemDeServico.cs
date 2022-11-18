using System;
using System.ComponentModel.DataAnnotations;

namespace ProjOfMec_API.Models
{
    public class OrdemDeServico
    {
        public int id { get; set; }

        public int idCliente { get; set; }

        public int idVeiculo { get; set; }

        public string? nomeMecanico { get; set; }

        public string? defeitoReclamado { get; set; }

        public string? diagnostico { get; set; }

        public string? DataPgto { get; set; }

        public string? FormaPgto { get; set; }

        public string? ValorPgto { get; set; }
    }
}
