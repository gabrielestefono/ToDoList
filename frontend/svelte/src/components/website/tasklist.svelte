<script lang="ts">
    import Task from './task.svelte';
    import './task-list.scss';
</script>

<div class="taskList">
    <div>
    <div>
        <div class="created">
        <p>Tarefas criadas</p>
        <span>0</span>
        </div>
        <div class="concluded">
        <p>Concluídas</p>
        <span>0</span>
        </div>
    </div>
    <hr />
    <div>
        <Task></Task>
    </div>
    </div>
</div>