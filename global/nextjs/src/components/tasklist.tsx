import { TaskInterface } from "@/pages";
import Task from "./task";
import style from './tasklist.module.scss';

interface taskListProps{taskList: TaskInterface[]}

export default function TaskList({taskList}: Readonly<taskListProps>){
    return (
        <div className={style.taskList}>
            <div>
                <div>
                    <div className={style.created}>
                        <p>Tarefas criadas</p>
                        <span>0</span>
                    </div>
                    <div className={style.concluded}>
                        <p>Concluídas</p>
                        <span>0</span>
                    </div>
                </div>
                <hr />
                <div>
                   {taskList.map((task: TaskInterface) => (<Task key={task.nome} {...task}/>))}
                </div>
            </div>
        </div>
    )
}