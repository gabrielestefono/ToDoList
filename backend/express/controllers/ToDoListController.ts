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
        res.status(200).send(this.taskList);
    }

    public createOne(req: Request, res: Response): void {
        const nome = req.body.nome;
        if (!nome) {
            res.status(400).send('Nome é obrigatório');
            return;
        }
        const newTask = new Task(nome);
        this.taskList.push(newTask);
        res.status(201).send(newTask);
    }
}
