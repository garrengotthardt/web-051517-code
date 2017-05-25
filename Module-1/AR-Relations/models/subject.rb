class Subject < ActiveRecord::Base
  #ASSOCIATIONS
  belongs_to :student
  belongs_to :teacher

  #VALIDATIONS
  validates_presence_of :title
  validates_length_of :title, maximum: 10
  validates :title, uniqueness: :true
end
