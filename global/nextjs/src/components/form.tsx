import { useForm } from "react-hook-form";
import style from "./form.module.scss";
import { TaskInterface } from "@/pages";
import { Dispatch, SetStateAction } from "react";

type TaskForm = {
  nome: string;
};

interface FormProps {
  setTaskList: Dispatch<SetStateAction<TaskInterface[]>>;
}

export default function Form({ setTaskList }: Readonly<FormProps>) {
  const { register, handleSubmit, reset } = useForm<TaskForm>();

  const onSubmit = (data: TaskForm) => {
    fetch("http://localhost:3000/api/todolist", {
      body: JSON.stringify(data),
      method: "POST",
      headers: {
        "Content-Type": "application/json",
      },
    })
      .then((response) => response.json())
      .then((data: TaskInterface) => setTaskList((prev) => [...prev, data]))
      .then(() => reset());
  };

  return (
    <form className={style.form} onSubmit={handleSubmit(onSubmit)}>
      <input
        type="text"
        placeholder="Adicione uma nova tarefa"
        {...register("nome")}
      />
      <button type="submit">
        {" "}
        Criar{" "}
        <img
          src="./icons/plus.svg"
          alt="Criar nova Tarefa"
          width="16px"
          height="16px"
        />
      </button>
    </form>
  );
}
