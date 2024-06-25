import express from 'express';
import router from './routes/ToDoListRoutes';

export default class Main {
  constructor() {}

  public static init() {
    const app = express();
    app.use('/', router);
    app.listen(3000, () => {
      console.log('Servidor rodando na porta 3000');
    });
  }
}

Main.init();
