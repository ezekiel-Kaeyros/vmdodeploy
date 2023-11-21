import { Component } from '@angular/core';
import { FormBuilder, FormGroup, Validators } from '@angular/forms';
import { ActivatedRoute, Router } from '@angular/router';
import { Course } from 'src/app/models/course.model';
import { CourceService } from 'src/app/services/cource.service';

@Component({
  selector: 'app-course-edit',
  templateUrl: './course-edit.component.html',
  styleUrls: ['./course-edit.component.css']
})
export class CourseEditComponent {

  courseForm: FormGroup;
  course: Course;

  constructor(private fb: FormBuilder,
              private courseService: CourceService,
              private router: Router,
              private route: ActivatedRoute) {}

  ngOnInit(): void {
    const id = this.route.snapshot.params['id'];
    this.courseService.getCourse(id).subscribe(
      (response: Course) => {
        this.course = response;
        this.initForm(this.course);
      }
    );
  }

  initForm(course: Course) {
    this.courseForm = this.fb.group({
      title: [course.title, Validators.required],
      description: [course.description, Validators.required],
      link: [course.link, Validators.required],
      author: [course.author]
    });
  }

  submitForm() {
    const formValue = this.courseForm.value;
    this.course.title = formValue['title'];
    this.course.description = formValue['description'];
    this.course.link = formValue['link'];
    this.course.author = formValue['author'];
    this.course.editedAt = new Date();

    this.courseService.editCourse(this.course.id ?? 0, this.course).subscribe(
      (response: Course) => {
        this.router.navigate([`/courses/${response.id}`])
      },
      (error) => {
        console.error(`An error occured: ${error.message}`);
      }
    );
  }

}
