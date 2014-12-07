Course.create!([
  {course_num: "CINS570", course_title: "Advanced Databases", units: 3, program_id: 10000, teacher_id: 10000, semester_id: 10000 }
])
Outcome.create!([
  {objective_letter: "A", description: "An ability to apply knowledge of computing and mathematics appropriate to information systems.", program_id: 10000 },
  {objective_letter: "B", description: "An ability to analyze a business problem, and identify and define the computing requirements appropriate to its solution.", program_id: 10000 },
  {objective_letter: "C", description: "An ability to design, implement, and evaluate an information system, process, component, or program to meet desired needs.", program_id: 10000 },
  {objective_letter: "D", description: "An ability to function effectively on teams to accomplish a common goal.", program_id: 10000 },
  {objective_letter: "E", description: "An understanding of professional, ethical, legal, security and social issues and responsibilities.", program_id: 10000 },
  {objective_letter: "F", description: "An ability to communicate effectively with a range of audiences.", program_id: 10000 },
  {objective_letter: "G", description: "An ability to analyze the local and global impact of computing on individuals, organizations, and society.", program_id: 10000 },
  {objective_letter: "H", description: "Recognition of the need for and an ability to engage in continuing professional development.", program_id: 10000 },
  {objective_letter: "I", description: "An ability to use current techniques, skills, and tools necessary for information systems practice.", program_id: 10000 },
  {objective_letter: "J", description: "An understanding of processes that support the delivery and management of information systems within a specific application environment.", program_id: 10000 },
  {objective_letter: "A", description: "An ability to apply knowledge of computing and mathematics appropriate to the discipline.", program_id: 10001 },
  {objective_letter: "B", description: "An ability to analyze a problem, and identify and define the computing requirements appropriate to its solution.", program_id: 10001 },
  {objective_letter: "C", description: "An ability to design, implement, and evaluate a computer-based system, process, component, or program to meet desired needs.", program_id: 10001 },
  {objective_letter: "D", description: "An ability to function effectively on teams to accomplish a common goal.", program_id: 10001 },
  {objective_letter: "E", description: "An understanding of professional, ethical, legal, security and social issues and responsibilities.", program_id: 10001 },
  {objective_letter: "F", description: "An ability to communicate effectively with a range of audiences.", program_id: 10001 },
  {objective_letter: "G", description: "An ability to analyze the local and global impact of computing on individuals, organizations, and society.", program_id: 10001 },
  {objective_letter: "H", description: "Recognition of the need for and an ability to engage in continuing professional development.", program_id: 10001 },
  {objective_letter: "I", description: "An ability to use current techniques, skills, and tools necessary for computing practice.", program_id: 10001 },
  {objective_letter: "J", description: "An ability to apply mathematical foundations, algorithmic principles, and computer science theory in the modeling and design of computer-based systems in a way that demonstrates comprehension of the tradeoffs involved in design choices.", program_id: 10001 },
  {objective_letter: "K", description: "An ability to apply design and development principles in the construction of software systems of varying complexity.", program_id: 10001 },
  {objective_letter: "A", description: "An ability to apply knowledge of theoretical foundations and formal methods in computer science.", program_id: 10002 },
  {objective_letter: "B", description: "An ability to use current techniques, skills, and tools necessary for computing practice.", program_id: 10002 },
  {objective_letter: "C", description: "An ability to analyze a problem, and then to design, implement, and evaluate a computer-based system, process, component, or program to meet desired needs.", program_id: 10002 },
  {objective_letter: "D", description: "An ability to communicate effectively with a range of audiences.", program_id: 10002 },
  {objective_letter: "E", description: "An understanding of professional, ethical, legal, security and social issues and responsibilities and how these relate to the local and global impact of computing on individuals, organizations, and society.", program_id: 10002 },
  {objective_letter: "F", description: "Recognition of the need for and an ability to engage in continuing professional development.", program_id: 10002 }
])
Program.create!([
  {name: "CINS", description: "Computer Information Systems" },
  {name: "CSCI", description: "Computer Science" },
  {name: "MSCS", description: "Master of Computer Science" }
])
Semester.create!([
  {name: "fall2014" }
])
Teacher.create!([
  {last_name: "Zeichick", first_name: "David", username: "dzeichick", availability: nil }
])
