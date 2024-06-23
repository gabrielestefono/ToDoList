from django.http import JsonResponse
from django.views import View
from django.views.decorators.csrf import csrf_exempt
from django.utils.decorators import method_decorator
from django.views.decorators.http import require_http_methods
from todolist.utils.task import Task
import json

task_list = [
    Task("Comprar pão"),
    Task("Ir à academia"),
    Task("Estudar javascript")
]

@method_decorator(csrf_exempt, name='dispatch')
class TaskListView(View):

    @method_decorator(require_http_methods(["GET"]))
    def get(self, request, *args, **kwargs):
        serialized_tasks = [task.to_dict() for task in task_list]
        return JsonResponse(serialized_tasks, safe=False)

    @method_decorator(require_http_methods(["POST"]))
    def post(self, request, *args, **kwargs):
        data = request.body
        data_str = data.decode('utf-8')
        data_dict = json.loads(data_str)
        new_task_description = data_dict.get('nome', '')
        new_task = Task(new_task_description)
        task_list.append(new_task)
        return JsonResponse(new_task.to_dict(), safe=False)
