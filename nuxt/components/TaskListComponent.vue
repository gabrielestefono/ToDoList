<template>
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
        <TaskComponent></TaskComponent>
      </div>
    </div>
  </div>
</template>

<script lang="ts">
import './task-list.scss'
</script>
