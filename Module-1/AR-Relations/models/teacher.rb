class Teacher < ActiveRecord::Base
  #ASSOCIATIONS
  # has_many :students
  # has_and_belongs_to_many :students
  has_many :subjects
  has_many :students, through: :subjects

  #VALIDATIONS
  validates_presence_of :name
  validates_length_of :name, maximum: 10
  validates :name, uniqueness: :true
end
