import Head from "next/head";
import Header from "@/components/header";
import Form from "@/components/form";
import TaskList from "@/components/tasklist";
import { GetServerSideProps, InferGetServerSidePropsType } from "next";
import { useState } from "react";

export interface TaskInterface {
  nome: string;
  concluida: boolean;
}

export const getServerSideProps: GetServerSideProps<{ taskList: TaskInterface[] }> = async () => {
  const res = await fetch("http://localhost:3000/api/todolist");
  const taskList: TaskInterface[] = await res.json();
  return { props: { taskList } };
};

export default function Home({ taskList }: Readonly<InferGetServerSidePropsType<typeof getServerSideProps>>) {
  const [tasks, setTasks] = useState<TaskInterface[]>(taskList);

  return (
    <>
      <Head>
        <title>To Do List</title>
      </Head>
      <Header />
      <Form setTaskList={setTasks}/>
      <TaskList taskList={tasks}/>
    </>
  );
}
