using System.IdentityModel.Tokens.Jwt;
using System.Security.Claims;
using System.Text;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Mvc;
using Microsoft.IdentityModel.Tokens;
using ProjOfMec_API.Data;
using ProjOfMec_API.Models;

namespace ProjOfMec_API.Controllers
{
    [ApiController]
    [Route("/api/[controller]")]
    public class HomeController : ControllerBase
    {
        private readonly IConfiguration _configuration;
        private readonly OfMecContext? _context;

        public HomeController(IConfiguration configuration, OfMecContext context)
        {
            _configuration = configuration;
            _context = context;
        }

        [HttpPost]
        [Route("register")]
        [AllowAnonymous]
        public async Task<IActionResult> Register([FromBody] Register model)
        {

            
           

            var userRegister = _context.Register
                .Where(u => u.username == model.username && u.senha == model.senha && u.role == model.role)
                .FirstOrDefault();

            if (userRegister != null)
                return Unauthorized(
                    "Usuario ou senha já existentes, registre outro usuário e senha ou faça o login em: http://localhost:5277/api/home/login"
                );
             
            /* Já está sendo validado nas rotas das regras
             if(userRegister.IsMecanico == "true")
             {
                userRegister.role = UserRoles.Mecanico;
             }

             if(userRegister.IsMecanico == "false")
             {
                userRegister.role = UserRoles.Cliente;
             } */

        
            try
            {
                _context.Register.Add(model);
                if ((await _context.SaveChangesAsync() == 1))
                {
                    //return Ok();
                    return Ok(Created($"/api/register/{model.username}", model));
                }
            }
            catch
            {
                return this.StatusCode(
                    StatusCodes.Status500InternalServerError,
                    "Falha no acesso ao banco de dados."
                );
            }
            // retorna BadRequest se não conseguiu incluir
            return BadRequest();
        }


        [HttpPost]
        [Route("login")]
        [AllowAnonymous]
        public ActionResult<dynamic> Login([FromBody] User usuario)
        {
            //verifica se existe aluno a ser excluído
            var user = _context.Usuario
                .Where(u => u.username == usuario.username && u.senha == usuario.senha )
                .FirstOrDefault();

            if (user == null)
                return Unauthorized("Usuário ou senha inválidos");

            var authClaims = new List<Claim>
            {
                new Claim(ClaimTypes.Name, user.username),
                new Claim(ClaimTypes.Role, user.role),
                new Claim(JwtRegisteredClaimNames.Jti, Guid.NewGuid().ToString()),
            };

            var token = GetToken(authClaims);
            user.senha = "";

            return Ok(new { token = new JwtSecurityTokenHandler().WriteToken(token), user = user });
        }

        [HttpGet]
        [Route("anonymous")]
        [AllowAnonymous]
        public string Anonymous() => "Anônimo";

        [HttpGet]
        [Route("authenticated")]
        [Authorize]
        public string Authenticated() => String.Format("Autenticado - {0}", User.Identity.Name);

        [HttpGet]
        [Route("cliente")]
        [Authorize(Roles = "cliente,mecanico")]
        public string Cliente() => "Cliente";

        [HttpGet]
        [Route("mecanico")]
        [Authorize(Roles = "mecanico")]
        public string Mecanico() => "Mecânico";

        private JwtSecurityToken GetToken(List<Claim> authClaims)
        {
            var authSigningKey = new SymmetricSecurityKey(
                Encoding.UTF8.GetBytes(_configuration["JWT:Secret"])
            );
            var token = new JwtSecurityToken(
                expires: DateTime.Now.AddHours(3),
                issuer: _configuration["JWT:ValidIssuer"],
                audience: _configuration["JWT:ValidAudience"],
                claims: authClaims,
                signingCredentials: new SigningCredentials(
                    authSigningKey,
                    SecurityAlgorithms.HmacSha256
                )
            );
            return token;
        }
    }
}
