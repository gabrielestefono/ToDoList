import style from './form.module.scss';

export default function Form(){
    return(
        <form className={style.form} action="" method="GET">
            <input type="text" placeholder="Adicione uma nova tarefa" name="task"/>
            <button type="submit"> Criar <img src="./icons/plus.svg" alt="Criar nova Tarefa" width="16px" height="16px"/></button>
        </form>
    )
}