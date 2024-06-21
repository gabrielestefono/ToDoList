import Task from "./task";
import style from './tasklist.module.scss';

export default function TaskList(){
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
                   <Task/>
                   <Task/>
                   <Task/>
                </div>
            </div>
        </div>
    )
}