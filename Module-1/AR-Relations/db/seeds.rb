tony   = Teacher.create(name: "Tony")
johann = Teacher.create(name: "Johann")
ian    = Teacher.create(name: "Ian")

jp    = Student.create(name: "JP")
zach  = Student.create(name: "Zach")
mirna = Student.create(name: "Mirna")

tony.students << jp
zach.teacher = ian
zach.save
johann.students << mirna
