import { Task } from "@/utils/api/templates/Task";
import { NextApiRequest, NextApiResponse } from "next";

class TaskAPI {
  private taskList: Task[];

  constructor() {
    this.taskList = [
      new Task("Comprar pão"),
      new Task("Estudar JavaScript"),
      new Task("Fazer exercícios"),
    ];
  }

  public getAll(req: NextApiRequest, res: NextApiResponse) {
    res.status(200).json(this.taskList);
  }

  public addTask(req: NextApiRequest, res: NextApiResponse){
    const nome = req.body.nome;
    if(nome && nome != ''){
      const newTask = new Task(req.body.nome); 
      this.taskList.push(newTask);
      res.status(201).send(newTask);
    }
  }
}

const handler = (req: NextApiRequest, res: NextApiResponse) => {
  const taskAPI = new TaskAPI();

  if (req.method === 'GET') {
    taskAPI.getAll(req, res);
  } else if (req.method === 'POST'){
    console.log('Chegou em POST')
    taskAPI.addTask(req, res);
  } else {
    res.setHeader('Allow', ['GET', 'POST']);
    res.status(405).end(`Method ${req.method} Not Allowed`);
  }
};

export default handler;