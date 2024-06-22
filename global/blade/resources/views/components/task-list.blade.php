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
			@foreach ($tasklist as $task)
				<x-task :task="$task"/>
			@endforeach
		</div>
	</div>
</div>