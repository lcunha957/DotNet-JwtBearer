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
    public class OrdemDeServicoController : ControllerBase
    {
        private readonly OfMecContext _context;

        public OrdemDeServicoController(OfMecContext context)
        { // construtor
            _context = context;
        }

        [HttpGet]
        public ActionResult<List<OrdemDeServico>> GetAll()
        {
            return _context.OrdemDeServico.ToList();
        }

        [HttpGet("{OrdemDeServicoId}")]
        public ActionResult<List<OrdemDeServico>> Get(int OrdemDeServicoId)
        {
            try
            {
                var result = _context.OrdemDeServico.Find(OrdemDeServicoId);
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
        public async Task<ActionResult> post(OrdemDeServico model)
        {
            try
            {
                _context.OrdemDeServico.Add(model);
                if ((await _context.SaveChangesAsync() == 1))
                {
                    //return Ok();
                    return Created($"/api/ordemdeservico/{model.idCliente}", model);
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

        [HttpPut("{OrdemDeServicoId}")]
        public async Task<IActionResult> put(int OrdemDeServicoId, OrdemDeServico dadosOrdemDeServicoAlt)
        {
            try
            {
                //verifica se existe aluno a ser alterado
                var result = await _context.OrdemDeServico.FindAsync(OrdemDeServicoId);
                if (OrdemDeServicoId != result.id)
                {
                    return BadRequest();
                }

                result.idCliente = dadosOrdemDeServicoAlt.idCliente;
                result.idVeiculo = dadosOrdemDeServicoAlt.idVeiculo;
                result.nomeMecanico = dadosOrdemDeServicoAlt.nomeMecanico;
                result.defeitoReclamado = dadosOrdemDeServicoAlt.defeitoReclamado;
                result.diagnostico = dadosOrdemDeServicoAlt.diagnostico;
                result.DataPgto = dadosOrdemDeServicoAlt.DataPgto;
                result.FormaPgto = dadosOrdemDeServicoAlt.FormaPgto;
                result.ValorPgto = dadosOrdemDeServicoAlt.ValorPgto;
 
                await _context.SaveChangesAsync();
                return Created($"/api/ordemdeservico/{dadosOrdemDeServicoAlt.idCliente}", dadosOrdemDeServicoAlt);
            }
            catch
            {
                return this.StatusCode(
                    StatusCodes.Status500InternalServerError,
                    "Falha no acesso ao banco de dados."
                );
            }
        }

        [HttpDelete("{OrdemDeServicoId}")]
        public async Task<ActionResult> delete(int OrdemDeServicoId)
        {
            try
            {
                //verifica se existe aluno a ser excluído
                var ordemdeservico = await _context.OrdemDeServico.FindAsync(OrdemDeServicoId);
                if (ordemdeservico == null)
                { //método do EF
                    return NotFound();
                }
                _context.Remove(ordemdeservico);
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
