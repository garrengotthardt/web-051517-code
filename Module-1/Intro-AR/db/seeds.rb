Pizza.create(name: "Mushroom", cheese: "please", sauce: "red")
Pizza.create(name: "Yomi", cheese: "none", sauce: "red")
Pizza.create(name: "Pepperoni", cheese: "mozzarella", sauce: "red")
er = Pizza.create(name: "Mushroom", cheese: "please", sauce: "red").errors.full_messages.first
puts er
