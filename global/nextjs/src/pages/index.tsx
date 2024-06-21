import Head from "next/head";
import Header from "@/components/header";
import Form from "@/components/form";
import TaskList from "@/components/tasklist";

export default function Home() {
  return (
    <>
      <Head>
        <title>To Do List</title>
      </Head>
      <Header/>
      <Form/>
      <TaskList/>
    </>
  );
}
