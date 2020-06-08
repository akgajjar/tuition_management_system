import { Student } from './../DTO/Student';
import { StudentService } from './../service/student-service.service';
import { Component, OnInit, Input } from '@angular/core';
import { Router } from '@angular/router';

@Component({
  selector: 'app-show-student-full-details',
  templateUrl: './show-student-full-details.component.html',
  styleUrls: ['./show-student-full-details.component.css',
              '../../assets/css/showfulldetails.css',
              '../../assets/css/style.css']
})
export class ShowStudentFullDetailsComponent implements OnInit {

  @Input('selectedStudent')student : Student;

  constructor(
    private _studentService: StudentService,
    private _router: Router
  ) {}

  ngOnInit(): void {
  }

  showAllStudents(){
    this._studentService.getStudents().subscribe(
      (studentData) => {
        (this._studentService.students = studentData), console.log(studentData);this._router.navigate(['/student/showAll']);
      },
      (error) => {
        console.log(error);
      }
    );
  }



}
