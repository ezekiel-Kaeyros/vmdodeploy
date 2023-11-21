import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { HomeComponent } from './home/home.component';
import { SharedModule } from '../shared/shared.module';
import { ToolboxComponent } from './toolbox/toolbox.component';
import { RouterModule } from '@angular/router';
import { ToolpagesComponent } from './toolpages/toolpages.component';
import { MaterialModule } from '../modules/material/material.module';
import { TextComponent } from './toolbox/text/text.component';
import { AudioComponent } from './toolbox/audio/audio.component';
import { ImageComponent } from './toolbox/image/image.component';
import { DocumentComponent } from './toolbox/document/document.component';
import { ScanComponent } from './toolbox/scan/scan.component';
import { ImgSelectComponent } from './toolbox/image/img-select/img-select.component';
import { ImgContentComponent } from './toolbox/image/img-content/img-content.component';
import { DocSelectComponent } from './toolbox/document/doc-select/doc-select.component';
import { DocContentComponent } from './toolbox/document/doc-content/doc-content.component';
import { ProgramComponent } from './program/program.component';
import { LearningPlatformComponent } from './learning-platform/learning-platform.component';
import { EducationGuidanceComponent } from './education-guidance/education-guidance.component';
import { AboutUsComponent } from './about-us/about-us.component';
import { ProjectsComponent } from './projects/projects.component';
import { FormsModule, ReactiveFormsModule } from '@angular/forms';
import { ToolMethodenkofferComponent } from './tool-methodenkoffer/tool-methodenkoffer.component';
import { ProjectListComponent } from './projects/project-list/project-list.component';
import { ProjectCreateComponent } from './projects/project-create/project-create.component';
import { ProjectEditComponent } from './projects/project-edit/project-edit.component';
import { ProjectDetailsComponent } from './projects/project-details/project-details.component';
import { CourseListComponent } from './program/course/course-list/course-list.component';
import { CourseCreateComponent } from './program/course/course-create/course-create.component';
import { CourseEditComponent } from './program/course/course-edit/course-edit.component';
import { CourseDetailsComponent } from './program/course/course-details/course-details.component';
import { PdfReaderComponent } from './program/pdf-reader/pdf-reader.component';
import { AdminComponent } from './admin/admin.component';
import { HttpClientModule } from '@angular/common/http';

import { PdfViewerModule } from 'ng2-pdf-viewer';

@NgModule({
  declarations: [
    HomeComponent,
    ToolboxComponent,
    ToolpagesComponent,
    TextComponent,
    AudioComponent,
    ImageComponent,
    DocumentComponent,
    ScanComponent,
    ImgSelectComponent,
    ImgContentComponent,
    DocSelectComponent,
    DocContentComponent,
    ProgramComponent,
    LearningPlatformComponent,
    EducationGuidanceComponent,
    ProjectsComponent,
    AboutUsComponent,
    ToolMethodenkofferComponent,
    ProjectListComponent,
    ProjectCreateComponent,
    ProjectEditComponent,
    ProjectDetailsComponent,
    CourseListComponent,
    CourseCreateComponent,
    CourseEditComponent,
    CourseDetailsComponent,
    PdfReaderComponent,
    AdminComponent
  ],
  imports: [
    CommonModule,
    SharedModule,
    RouterModule,
    MaterialModule,
    SharedModule,
    FormsModule,
    ReactiveFormsModule,
    HttpClientModule,
    PdfViewerModule
  ]
})
export class PagesModule { }
