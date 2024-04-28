using Microsoft.AspNetCore.Mvc;

namespace ControleCurso.Controllers
{
    public class CursoController : Controller
    {
        public IActionResult Index()
        {
            return View();
        }
    }
}
