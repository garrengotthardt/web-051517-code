class Customer
  attr_accessor :first_name, :last_name, :reviews

  @@all = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name = last_name
    @@all << self
  end

  def self.all
    @@all
  end

  def restaurants
    self.reviews.map {|review| review.restaurant}
  end

  def reviews
    Review.all.select {|review| review.customer == self}
  end

  def create_review(restaurant, content)
    puts self
    Review.new(restaurant, content, self)
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def self.find_by_name(full_name)
    self.all.find {|cust| cust.full_name == full_name}
  end

  def self.find_all_by_first_name(first_name)
    self.all.find_all {|cust| cust.first_name == first_name}
  end

end

class Review
  attr_accessor :content
  attr_reader :restaurant, :customer

  @@all = []

  def initialize(restaurant, content, customer)
    @customer = customer
    @restaurant = restaurant
    @content = content
    @@all << self
  end

  def self.all
    @@all
  end



end

class Restaurant
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.find_by_name(name)
    self.all.find {|restaurant| restaurant.name == name}
  end

  def customers
    # return customer --> success!
    self.reviews.map {|review| review.customer}
  end

  def reviews
    # return all reviews associated with this restaurant
    Review.all.select {|review| review.restaurant == self}
  end

  def self.all
    @@all
  end

end
