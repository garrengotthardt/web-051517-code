class CreateSubjects < ActiveRecord::Migration[5.1]
  def change
    create_table :subjects do |t|
      t.references :student
      t.references :teacher
      t.string :title
    end

    drop_table :students_teachers
  end
end
