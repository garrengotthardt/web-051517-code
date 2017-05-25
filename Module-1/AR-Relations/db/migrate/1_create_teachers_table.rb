class CreateTeachersTable < ActiveRecord::Migration[4.2]
  def change
    create_table :teachers do |t|
      t.string :name
    end
  end
end
