import { Component } from '@angular/core';
import { TaskComponent } from '../task/task.component';

@Component({
  selector: 'app-tasklist',
  standalone: true,
  imports: [TaskComponent],
  templateUrl: './tasklist.component.html',
  styleUrl: './tasklist.component.scss'
})
export class TasklistComponent {

}
