using System;
using System.ComponentModel.DataAnnotations;

namespace ProjOfMec_API.Models
{
    public class Veiculo
    {
        public int id { get; set; }

        public int idCliente { get; set; }

        public string? marca { get; set; }

        public string? modelo { get; set; }

        public string? placa { get; set; }

        public string? tamanho { get; set; }

        public string? ano { get; set; }

        public string? combustivel { get; set; }
    }
}
