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
        private readonly OfMecContext _context;

        public UsuarioController(OfMecContext context)
        { // construtor
            _context = context;
        }

        [HttpGet]
        public ActionResult<List<Usuario>> GetAll()
        {
            return _context.Usuario.ToList();
        }

        [HttpGet("{UsuarioId}")]
        public ActionResult<List<Usuario>> Get(int UsuarioId)
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
        public async Task<ActionResult> post(Usuario model)
        {
            try
            {
                _context.Usuario.Add(model);
                if ((await _context.SaveChangesAsync() == 1))
                {
                    //return Ok();
                    return Created($"/api/usuario/{model.nomeCompleto}", model);
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
        public async Task<IActionResult> put(int UsuarioId, Usuario dadosUsuarioAlt)
        {
            try
            {
                //verifica se existe aluno a ser alterado
                var result = await _context.Usuario.FindAsync(UsuarioId);
                if (UsuarioId != result.id)
                {
                    return BadRequest();
                }

               result.nomeCompleto = dadosUsuarioAlt.nomeCompleto;
               result.cpf = dadosUsuarioAlt.cpf;
               result.celular = dadosUsuarioAlt.celular;
               result.email = dadosUsuarioAlt.email;
               result.senha = dadosUsuarioAlt.senha;

                await _context.SaveChangesAsync();
                return Created($"/api/usuario/{dadosUsuarioAlt.nomeCompleto}", dadosUsuarioAlt);
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
