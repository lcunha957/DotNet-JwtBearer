using System;
using System.ComponentModel.DataAnnotations;

namespace ProjOfMec_API.Models
{
    public class Register
    {
        public int id { get; set; }

        public string? username { get; set; }

        public string? senha { get; set; }

        public string? email { get; set; }
    }
}
