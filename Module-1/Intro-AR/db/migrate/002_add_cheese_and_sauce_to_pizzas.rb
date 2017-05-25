class AddCheeseAndSauceToPizzas < ActiveRecord::Migration[4.2]
  def change
    add_column :pizzas, :cheese, :string
    add_column :pizzas, :sauce, :string
  end
end
