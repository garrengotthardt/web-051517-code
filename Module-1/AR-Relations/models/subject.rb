class Subject < ActiveRecord::Base
  #ASSOCIATIONS
  belongs_to :teacher
  belongs_to :student
  #VALIDATIONS
  validates_presence_of :title
  validates_length_of :title, maximum: 10
  validates :title, uniqueness: :true
end
