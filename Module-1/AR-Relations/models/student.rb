class Student < ActiveRecord::Base
  #ASSOCIATIONS
  belongs_to :teacher
  # has_and_belongs_to_many :teachers
  # has_many :subjects
  # has_many :teachers, through: :subjects

  #VALIDATIONS
  validates_presence_of :name
  validates_length_of :name, maximum: 10
  validates :name, uniqueness: :true
end
