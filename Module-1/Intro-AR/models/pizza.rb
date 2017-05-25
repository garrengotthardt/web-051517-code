class Pizza < ActiveRecord::Base
    validates_presence_of :name
    validates_length_of :cheese, maximum: 10
    validates :name, uniqueness: :true
end
