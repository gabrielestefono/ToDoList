import { Request, Response } from 'express';
import Task from '../models/Task';

export default class ToDoListController {
    public taskList: Task[] = [];

    constructor(){
        this.taskList.push(new Task('Comprar Pães'))
        this.taskList.push(new Task('Varrer a casa'))
        this.taskList.push(new Task('Arrumar o quarto'))

        this.getAll = this.getAll.bind(this);
        this.createOne = this.createOne.bind(this);
    }

    public getAll(req: Request, res: Response): void {
        res.send(this.taskList).status(200);
    }

    public createOne(req: Request, res: Response): void {
        console.log(req.body)
        const nome = req.body.name;
        if(!nome){
            return;
        }
        const newTask = this.taskList.push(new Task(nome));
        res.send(newTask).status(201);
    }
}
