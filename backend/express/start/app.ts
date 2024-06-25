import express from 'express';

export default class Main {
    public static init() {
        const app = express();
        app.get('/', (req, res) => {
            res.send('Opora');
        });
        app.listen(3000, () => {
            console.log('Servidor rodando na porta 3000');
        });
    }
}