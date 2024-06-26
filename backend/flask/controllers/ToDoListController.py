from models.task import Task
import json;

task_list = [
    Task("Comprar pão"),
    Task("Ir à academia"),
    Task("Estudar javascript")
]

def getAll():
    return json.dumps([task.to_dict() for task in task_list])

def createOne(name):
    newTask = Task(name)
    task_list.append(newTask)
    return json.dumps(newTask.to_dict())