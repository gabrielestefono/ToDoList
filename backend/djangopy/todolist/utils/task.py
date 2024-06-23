class Task:
    def __init__(self, nome: str):
        self.nome = nome
        self.concluida = False

    def get_nome(self) -> str:
        return self.nome

    def set_nome(self, nome: str) -> None:
        self.nome = nome

    def get_concluida(self) -> bool:
        return self.concluida

    def set_concluida(self, concluida: bool) -> None:
        self.concluida = concluida

    def to_dict(self):
        return {
            'nome': self.nome,
            'concluida': self.concluida,
        }
