export class Task{
    private nome: string;

    private concluida: boolean;

    constructor(nome: string, concluida?: boolean) {
        this.nome = nome;
        this.concluida = concluida ? concluida : false;
    }

    public getNome(): string
    {
        return this.nome;
    }

    public setNome(nome: string): void
    {
        this.nome = nome;
    }

    public getConcluida(): boolean
    {
        return this.concluida;
    }

    public setConcluida(concluida: boolean): void
    {
        this.concluida = concluida;
    }
}