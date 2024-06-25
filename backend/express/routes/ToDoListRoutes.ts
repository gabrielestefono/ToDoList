import { Router } from 'express';
import ToDoListController from '../controllers/ToDoListController';

const router = Router();
const toDoListController = new ToDoListController();

router.get('/', toDoListController.getAll);

router.post('/', toDoListController.createOne);

export default router;
