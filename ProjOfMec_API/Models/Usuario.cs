using System;
using System.ComponentModel.DataAnnotations;

namespace ProjOfMec_API.Models
{
    public class Usuario
    {
        public int id { get; set; }

        public string? nomeCompleto { get; set; }

        public string? cpf { get; set; }

        public string? celular { get; set; }

        public string? email { get; set; }

        public string? senha { get; set; }
    }
}
