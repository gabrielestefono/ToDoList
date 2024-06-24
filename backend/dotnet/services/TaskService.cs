using System.Collections.Generic;
using MyTask = ToDoList.Templates.Task;

namespace ToDoList.Services
{
    public class TaskService
    {
        public List<MyTask> taskList { get; set; }

        public TaskService()
        {
            taskList = new List<MyTask>
            {
                new MyTask("Tarefa 1"),
                new MyTask("Tarefa 2"),
                new MyTask("Tarefa 3")
            };
        }
    }
}
