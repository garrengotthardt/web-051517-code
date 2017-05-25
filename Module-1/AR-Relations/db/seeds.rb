tony   = Teacher.find_or_create_by(name: "Tony")
johann = Teacher.find_or_create_by(name: "Johann")
ian    = Teacher.find_or_create_by(name: "Ian")

jp    = Student.find_or_create_by(name: "JP")
zach  = Student.find_or_create_by(name: "Zach")
mirna = Student.find_or_create_by(name: "Mirna")

# step1
# tony.students << jp
# zach.teacher = ian
# zach.save
# johann.students << mirna

# step2
# tony.students << jp
# zach.teachers << ian
# zach.teachers << tony
# johann.students << mirna

# step3
tony.subjects.create(student: zach, title: "Javascript")
