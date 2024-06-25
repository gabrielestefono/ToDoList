export default class Task{
    public nome: string;

    public concluida: boolean;

    constructor(nome: string){
        this.nome = nome;
        this.concluida = false;
    }
}