import { Router } from 'express';
import toDoListRoutes from './ToDoListRoutes';

const router = Router();

router.use('/', toDoListRoutes);

export default router;
