class Student < ActiveRecord::Base
  belongs_to :house
  has_many :courses
  has_many :spells, :through => :courses
end
