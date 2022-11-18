using System;
using System.ComponentModel.DataAnnotations;

namespace ProjOfMec_API.Models
{
    public class Cliente
    {
        [Key]
        public int id { get; set; }

        public string? cpf { get; set; }

        public string? nomeCompleto { get; set; }

        public string? DataNasc { get; set; }

        public string? EnderecoCompleto { get; set; }

        public string? celular { get; set; }

        public string? email { get; set; }
    }
}
