import express from 'express';
import router from '../routes/routes';

export default class Main {
  constructor() {}

  public static init() {
    const app = express();
    app.use(express.json());
    app.use('/', router);
    app.listen(3000, () => {
      console.log('Servidor rodando na porta 3000');
    });
  }
}