import { Component } from '@angular/core';
import { FormBuilder, FormGroup, Validators } from '@angular/forms';
import { ActivatedRoute, Router } from '@angular/router';
import { Project } from 'src/app/models/project.model';
import { ProjectService } from 'src/app/services/project.service';
// To remove
import { HttpEventType, HttpResponse } from '@angular/common/http';
import { Observable } from 'rxjs';
import { environment } from 'src/environments/environment';
// End to remove

@Component({
  selector: 'app-project-edit',
  templateUrl: './project-edit.component.html',
  styleUrls: ['./project-edit.component.css']
})
export class ProjectEditComponent {

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
  project: Project;
  apiUrl = environment.apiUrl;

  constructor(private fb: FormBuilder,
              private projectService: ProjectService,
              private router: Router,
              private route: ActivatedRoute) {}

  ngOnInit(): void {
    const id = this.route.snapshot.params['id'];
    this.projectService.getProject(id).subscribe(
      (response: Project) => {
        response.photoUrl = `${this.apiUrl}/media/${response.photoUrl}`;
        response.logoUrl = `${this.apiUrl}/media/${response.logoUrl}`;
        response.sponsorLogoUrl = `${this.apiUrl}/media/${response.sponsorLogoUrl}`;
        this.project = response;
        this.initForm(this.project);
      }
    );
  }

  initForm(project: Project) {
    this.projectForm = this.fb.group({
      title: [project.title, Validators.required],
      duration: [project.duration, Validators.required],
      description: [project.description, Validators.required],
    });
  }

  submitForm() {
    const formValue = this.projectForm.value;
    this.project.editedAt = new Date();

    this.projectService.emitProjectSubject();

    const projectData = new FormData();
    projectData.append('title', formValue['title']);
    projectData.append('duration', formValue['duration']);
    projectData.append('description', formValue['description']);
    projectData.append('link', '__link');
    projectData.append('author', '__author');
    projectData.append('photoUrl', formValue['photoUrl'] || this.project.photoUrl);
    projectData.append('logoUrl', formValue['logoUrl'] || this.project.logoUrl);
    projectData.append('sponsorLogoUrl', formValue['sponsorLogoUrl'] || this.project.sponsorLogoUrl);
    console.log(formValue['sponsorLogoUrl'] || this.project.sponsorLogoUrl);
    this.projectService.editProject(this.project.id ?? 0, projectData as any).subscribe(
      (response) => {
        this.router.navigate([`/projects/${response.id}`]);
      },
      (error) => {
        console.error(`An error occured: ${error.message}`);
      }
    );
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
