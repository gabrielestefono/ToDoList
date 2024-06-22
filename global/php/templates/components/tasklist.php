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
            <?php foreach ($taskList as $task): ?>
                <?php include '../templates/components/task.php'; ?>
            <?php endforeach; ?>
        </div>
    </div>
</div>