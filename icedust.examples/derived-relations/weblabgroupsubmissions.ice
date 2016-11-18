module weblabgroupsubmissions

model

  entity Student {
    name : String
  }
  
  entity Submission {
    grade : Float? = groupSubmission.grade (default) // if there is no student-specific grade, use the group grade
  }
  
  entity Assignment {
    avgGrade : Float? = avg(submissions.grade)
  }
  
  relation Submission.assignment 1 <-> Assignment.submissions
  relation Submission.student 1 <-> Student.submissions
  
  entity Group {
  
  }
  
  relation Group.members <-> Student.groups
  
  entity GroupSubmission {
    grade : Float?
  }
  
  relation GroupSubmission.assignment 1 <-> Assignment.groupSubmissions
  relation GroupSubmission.group 1 <-> Group.submissions
  
//  relation Submission.groupSubmission ? <-> * GroupSubmission.individualSubmissions // derive this
  
// Option 1: derived value expression
  
  relation Submission.groupSubmission ? = assignment.groupSubmissions.filter(x => x.group.members.filter(y => y == student).count()>=1).first()
    <-> * GroupSubmission.individualSubmissions

// Option 2: datalog-style (with .notation)
//
// s:Submission.groupSubmission ? <-> * g:GroupSubmission.individualSubmissions {
//   g = s.assignment.groupSubmissions
//   g = s.student.groups.members.submissions
// }

// Option 3: datalog-style (with .notation) restricted
//
// Submission.groupSubmission ? <-> * GroupSubmission.individualSubmissions {
//   assignment.groupSubmissions
//   student.groups.members.submissions
// }

data

  alice:Student{
    name = "Alice"
  }
  bob:Student{
    name = "Bob"
  }
  charles:Student{
    name = "Charles"
  }
  
  group:Group{
    members = 
      alice,
      bob,
      charles
  }
  
  assignment:Assignment {
    submissions =
      submissionAlice{
        grade = 10.0
        student = alice
      },
      submissionBob{
        student = bob
      },
      {
        student = charles
      }
    groupSubmissions =
      {
        group = group
        grade = 7.0
      }
  }
  
execute

  assignment.avgGrade // should be 8.0
  