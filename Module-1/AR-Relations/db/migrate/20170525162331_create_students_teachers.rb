class CreateStudentsTeachers < ActiveRecord::Migration[5.1]
  def change
    create_table :students_teachers do |t|
      t.references :student
      t.references :teacher
    end

    remove_column :students, :teacher_id
  end
end
