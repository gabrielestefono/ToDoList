import { Component } from '@angular/core';
import { HeaderComponent } from '../../components/header/header.component';
import { FormComponent } from '../../components/form/form.component';
import { TasklistComponent } from '../../components/tasklist/tasklist.component';

@Component({
  selector: 'app-todolist',
  standalone: true,
  imports: [HeaderComponent, FormComponent, TasklistComponent],
  templateUrl: './todolist.component.html',
  styleUrl: './todolist.component.scss'
})

export class TodolistComponent {}
