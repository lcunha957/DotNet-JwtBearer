using System;
using System.ComponentModel.DataAnnotations;

namespace ProjOfMec_API.Models
{
    public class User
    {
        public int Id { get; set; }
        public string username { get; set; } = string.Empty;
        public string senha { get; set; } = string.Empty;
        public string role { get; set; } = string.Empty;
    }

    public static class UserRoles
    {
        public const string Cliente = "Cliente";
        public const string Mecanico = "Mecanico";
    }
}
