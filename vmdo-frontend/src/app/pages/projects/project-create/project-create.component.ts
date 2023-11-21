import { Component } from '@angular/core';
import { FormBuilder, FormGroup, Validators } from '@angular/forms';
import { Router } from '@angular/router';
import { Project } from 'src/app/models/project.model';
import { ProjectService } from 'src/app/services/project.service';
// To remove
import { HttpErrorResponse } from '@angular/common/http';
import { Observable } from 'rxjs';
// End to remove

@Component({
  selector: 'app-project-create',
  templateUrl: './project-create.component.html',
  styleUrls: ['./project-create.component.css']
})
export class ProjectCreateComponent {

  // To remove
  selectedFiles?: FileList;
  currentFile?: File;
  progress = 0;
  message = '';
  // preview = '';
  logoProject = '';
  logoPatner = '';
  logoSponsor = '';

  imageInfos?: Observable<any>;
  // End to remove

  projectForm: FormGroup;

  constructor(private fb: FormBuilder,
              private projectService: ProjectService,
              private router: Router) {}

  ngOnInit(): void {
      this.initForm();
  }

  initForm() {
    this.projectForm = this.fb.group({
      title: ['', Validators.required],
      duration: ['', Validators.required],
      description: ['', Validators.required],
      photoUrl: [null],
      logoUrl: [null],
      sponsorLogoUrl: [null]
    });
  }

  initFile(file: File) {

  }

  submitForm() {
    const formValue = this.projectForm.value;

    console.log(formValue);

    const projectData = new FormData();
    projectData.append('title', formValue['title']);
    projectData.append('duration', formValue['duration']);
    projectData.append('description', formValue['description']);
    projectData.append('link', '__link');
    projectData.append('author', '__author');
    projectData.append('photoUrl', formValue['photoUrl']);
    projectData.append('logoUrl', formValue['logoUrl']);
    projectData.append('sponsorLogoUrl', formValue['sponsorLogoUrl']);
    this.projectService.createProject(projectData as any).subscribe(
      (response) => {
        this.projectService.getAllProjects();
        this.projectService.emitProjectSubject();
        this.router.navigate([`/projects/${response.id}`]);
      },
      (error: HttpErrorResponse) => {
        console.error(`An error occured: ${error.message}`);
      }
    );
  }

  selectFile(event: any): void {
    let preview = '';
    this.message = '';
    this.progress = 0;
    this.selectedFiles = event.target.files;

    if (this.selectedFiles) {
      const file: File | null = this.selectedFiles.item(0);

      if (file) {
        preview = '';
        this.currentFile = file;

        const reader = new FileReader();

        reader.onload = (e: any) => {
          preview = e.target.result;
        };

        reader.readAsDataURL(this.currentFile);
      }
    }
  }

  selectLogoProject(event: any) {
    this.selectedFiles = event.target.files;
    this.logoProject = '';
    if (this.selectedFiles) {
      const file: File | null = this.selectedFiles.item(0);

      if (file) {
        this.logoProject = '';
        this.currentFile = file;
        this.projectForm.get('photoUrl')?.patchValue(file);
        this.projectForm.get('photoUrl')?.updateValueAndValidity();

        const reader = new FileReader();

        reader.onload = (e: any) => {
          this.logoProject = e.target.result;
        };

        reader.readAsDataURL(this.currentFile);
      }
    }
  }
  selectLogoPatner(event: any) {
    this.selectedFiles = event.target.files;
    this.logoPatner = '';
    if (this.selectedFiles) {
      const file: File | null = this.selectedFiles.item(0);

      if (file) {
        this.logoPatner = '';
        this.currentFile = file;
        this.projectForm.get('logoUrl')?.patchValue(file);
        this.projectForm.get('logoUrl')?.updateValueAndValidity();

        const reader = new FileReader();

        reader.onload = (e: any) => {
          this.logoPatner = e.target.result;
        };

        reader.readAsDataURL(this.currentFile);
      }
    }
  }
  selectLogoSponsor(event: any) {
    this.selectedFiles = event.target.files;
    this.logoSponsor = '';
    if (this.selectedFiles) {
      const file: File | null = this.selectedFiles.item(0);

      if (file) {
        this.logoSponsor = '';
        this.currentFile = file;
        this.projectForm.get('sponsorLogoUrl')?.patchValue(file);
        this.projectForm.get('sponsorLogoUrl')?.updateValueAndValidity();

        const reader = new FileReader();

        reader.onload = (e: any) => {
          this.logoSponsor = e.target.result;
        };

        reader.readAsDataURL(this.currentFile);
      }
    }
  }

}
