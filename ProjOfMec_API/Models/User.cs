using System;
using System.ComponentModel.DataAnnotations;

namespace ProjOfMec_API.Models
{
    public class User
    {
        public int Id { get; set; }

        [Required(ErrorMessage = "O {0} é requerido")]
        public string username { get; set; } = string.Empty;

        [Required(ErrorMessage = "A {0} é requerida")]
        [StringLength(
            10,
            ErrorMessage = "A {0} deve ter entre {2} e {1} caracteres",
            MinimumLength = 8
        )]
        public string senha { get; set; } = string.Empty;

      
        [Required(ErrorMessage = "Perfis aceitos: Cliente e Mecanico")]
        public string role { get; set; } = string.Empty;

        [Required(ErrorMessage = "IsMecanico é obrigatório! Você é um mecanico?")]
        public bool IsMecanico { get; set; } = false;

          [Required(ErrorMessage = "O {0} é requerido")]
        [EmailAddress(ErrorMessage = "O {0} está em formato incorreto")]
        public string? email { get; set; }
    }

    public static class UserRoles
    {
        public const string Cliente = "Cliente";
        public const string Mecanico = "Mecanico";
    }
}
