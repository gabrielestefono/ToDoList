namespace ToDoList.Templates
{
    public class Task
    {
        public string nome;

        public bool concluida;

        public Task(string nome)
        {
            this.nome = nome;
            concluida = false;
        }

        public string Nome
        {
            get { return nome; }
            set { nome = value; }
        }

        public bool Concluida
        {
            get { return concluida; }
            set { concluida = value; }
        }
    }
}