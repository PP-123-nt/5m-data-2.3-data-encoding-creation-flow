
namespace py school

struct Student {
    1: required string name,
    2: required i32 age,
    3: required list<string> courses
}

service School {
    Student enrollCourse(1: Student student, 2: string courseName)
}
