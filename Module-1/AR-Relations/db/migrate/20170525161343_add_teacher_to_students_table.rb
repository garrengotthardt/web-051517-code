class AddTeacherToStudentsTable < ActiveRecord::Migration[5.1]
  # def change
  #   add_column :students, :teacher_id, :integer
  # end
  def change
    add_reference :students, :teacher, index: true
  end
end
