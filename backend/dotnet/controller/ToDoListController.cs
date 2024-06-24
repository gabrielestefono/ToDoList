using Microsoft.AspNetCore.Mvc;
using System.Collections.Generic;
using ToDoList.Interface;
using ToDoList.Services;
using MyTask = ToDoList.Templates.Task;

namespace ToDoList.Controllers
{
    [ApiController]
    [Route("")]
    public class ToDoListController : ControllerBase
    {
        private readonly TaskService _taskService;

        public ToDoListController(TaskService taskService)
        {
            _taskService = taskService;
        }

         [HttpGet]
        public IActionResult Get()
        {
            Console.WriteLine("Olá, mundo!");
            return Ok(_taskService.taskList);
        }
        
         [HttpPost]
        public IActionResult Post([FromBody] TaskInterface model)
        {
            MyTask newTask = new MyTask(model.nome);
            _taskService.taskList.Add(newTask);
            return Ok(_taskService.taskList);
        }
    }
}
