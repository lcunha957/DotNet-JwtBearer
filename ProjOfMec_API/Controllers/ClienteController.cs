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
    public class ClienteController : ControllerBase
    {
        private readonly OfMecContext _context;

        public ClienteController(OfMecContext context)
        { // construtor
            _context = context;
        }

        [HttpGet]
        public ActionResult<List<Cliente>> GetAll()
        {
            return _context.Cliente.ToList();
        }

        [HttpGet("{ClienteId}")]
        public ActionResult<List<Cliente>> Get(int ClienteId)
        {
            try
            {
                var result = _context.Cliente.Find(ClienteId);
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
        public async Task<ActionResult> post(Cliente model)
        {
            try
            {
                _context.Cliente.Add(model);
                if ((await _context.SaveChangesAsync() == 1))
                {
                    //return Ok();
                    return Created($"/api/cliente/{model.cpf}", model);
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

        [HttpPut("{ClienteId}")]
        public async Task<IActionResult> put(int ClienteId, Cliente dadosClienteAlt)
        {
            try
            {
                //verifica se existe aluno a ser alterado
                var result = await _context.Cliente.FindAsync(ClienteId);
                if (ClienteId != result.id)
                {
                    return BadRequest();
                }

                result.cpf = dadosClienteAlt.cpf;
                result.nomeCompleto = dadosClienteAlt.nomeCompleto;
                result.DataNasc = dadosClienteAlt.DataNasc;
                result.EnderecoCompleto = dadosClienteAlt.EnderecoCompleto;
                result.celular = dadosClienteAlt.celular;
                result.email = dadosClienteAlt.email;

                await _context.SaveChangesAsync();
                return Created($"/api/cliente/{dadosClienteAlt.cpf}", dadosClienteAlt);
            }
            catch
            {
                return this.StatusCode(
                    StatusCodes.Status500InternalServerError,
                    "Falha no acesso ao banco de dados."
                );
            }
        }

        [HttpDelete("{ClienteId}")]
        public async Task<ActionResult> delete(int ClienteId)
        {
            try
            {
                //verifica se existe aluno a ser excluído
                var cliente = await _context.Cliente.FindAsync(ClienteId);
                if (cliente == null)
                { //método do EF
                    return NotFound();
                }
                _context.Remove(cliente);
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
