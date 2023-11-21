import { Component } from '@angular/core';
import { FormBuilder, FormGroup, Validators } from '@angular/forms';
import { Course } from 'src/app/models/course.model';
import { CourceService } from 'src/app/services/cource.service';
import { Router } from '@angular/router';

@Component({
  selector: 'app-course-create',
  templateUrl: './course-create.component.html',
  styleUrls: ['./course-create.component.css']
})
export class CourseCreateComponent {

  courseForm: FormGroup;

  constructor(private fb: FormBuilder,
              private courseService: CourceService,
              private router: Router) {}

  ngOnInit(): void {
      this.initForm();
  }

  initForm() {
    this.courseForm = this.fb.group({
      title: ['', Validators.required],
      description: ['', Validators.required],
      link: ['', Validators.required],
      author: ['']
    });
  }

  submitForm() {
    const formValue = this.courseForm.value;
    const course: Course = {
      title: formValue['title'],
      description: formValue['description'],
      link: formValue['link'],
      author: formValue['author'],
    };

    this.courseService.createCourse(course).subscribe(
      (response) => {
        this.router.navigate([`/courses/${response.id}`]);
      },
      (error) => {
        console.error('An occured: ' + error);
      }
    )

  }

}
