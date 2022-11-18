using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using ProjOfMec_API.Data;
using ProjOfMec_API.Models;

namespace ProjOfMec_API.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class UsuarioController : ControllerBase
    {
        private readonly IConfiguration _configuration;
        private readonly OfMecContext? _context;

        public UsuarioController(IConfiguration configuration, OfMecContext context)
        {
            _configuration = configuration;
            _context = context;
        }

        [HttpGet]
        public ActionResult<List<User>> GetAll()
        {
            return _context.Usuario.ToList();
        }

        [HttpGet("{UsuarioId}")]
        public ActionResult<List<User>> Get(int UsuarioId)
        {
            try
            {
                var result = _context.Usuario.Find(UsuarioId);
                if (result == null)
                {
                    return NotFound();
                }
                return Ok(result);
            }
            catch
            {
                return this.StatusCode(
                    StatusCodes.Status500InternalServerError,
                    "Falha no acesso ao banco de dados."
                );
            }
        }

        [HttpPost]
        public async Task<ActionResult> post([FromBody] User model)
        {
            var result = _context.Usuario
                .Where(u => u.username == model.username && u.senha == model.senha)
                .FirstOrDefault();

            if (result != null)
                return BadRequest();

            /* Já está sendo validado nas rotas das regras
            if (result.IsMecanico == "true")
            {
                result.role = UserRoles.Mecanico;
            }

            if (result.IsMecanico == "false")
            {
                result.role = UserRoles.Cliente;
            } */

            if ((result.role != "cliente") || (result.role != "mecanico"))
                return BadRequest("Digite {cliente} ou {mecanico} no campo roles");

            if ((result.IsMecanico != "false") || (result.IsMecanico != "true"))
                return BadRequest("Responda com false ou true: Você é mecânico?");
            try
            {
                _context.Usuario.Add(model);
                if ((await _context.SaveChangesAsync() == 1))
                {
                    //return Ok();
                    return Created($"/api/usuario/{model.username}", model);
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

        [HttpPut("{UsuarioId}")]
        public async Task<IActionResult> put(int UsuarioId, User dadosUsuarioAlt)
        {
            try
            {
                //verifica se existe aluno a ser alterado
                var result = await _context.Usuario.FindAsync(UsuarioId);
                if (UsuarioId != result.Id)
                {
                    return BadRequest();
                }

                /* Já está sendo validado nas rotas das regras
                        if (result.IsMecanico == "true")
                    {
                        result.role = UserRoles.Mecanico;
                    }
    
                    if (result.IsMecanico == "false")
                    {
                        result.role = UserRoles.Cliente;
                    } */

                if ((result.role != "cliente") || (result.role != "mecanico"))
                    return BadRequest("Digite {cliente} ou {mecanico} no campo role");

                if ((result.IsMecanico != "false") || (result.IsMecanico != "true"))
                    return BadRequest("Responda com false ou true: Você é mecânico?");

                result.username = dadosUsuarioAlt.username;
                result.senha = dadosUsuarioAlt.senha;
                result.role = dadosUsuarioAlt.role;
                result.IsMecanico = dadosUsuarioAlt.IsMecanico;
                result.email = dadosUsuarioAlt.email;

                await _context.SaveChangesAsync();
                return Created($"/api/usuario/{dadosUsuarioAlt.username}", dadosUsuarioAlt);
            }
            catch
            {
                return this.StatusCode(
                    StatusCodes.Status500InternalServerError,
                    "Falha no acesso ao banco de dados."
                );
            }
        }

        [HttpDelete("{UsuarioId}")]
        public async Task<ActionResult> delete(int UsuarioId)
        {
            try
            {
                //verifica se existe aluno a ser excluído
                var usuario = await _context.Usuario.FindAsync(UsuarioId);
                if (usuario == null)
                { //método do EF
                    return NotFound();
                }
                _context.Remove(usuario);
                await _context.SaveChangesAsync();
                return NoContent();
            }
            catch
            {
                return this.StatusCode(
                    StatusCodes.Status500InternalServerError,
                    "Falha no acesso ao banco de dados."
                );
            }
        }
    }
}
