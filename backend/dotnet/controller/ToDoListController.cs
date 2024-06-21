using Microsoft.AspNetCore.Mvc;

namespace ToDoList.Controllers
{
    [ApiController]
    [Route("")]
    public class ToDoListController : ControllerBase
    {
        [HttpGet]
        public IActionResult Get()
        {
            return Ok("Hello World!");
        }
    }
}
