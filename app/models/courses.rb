class Courses < ActiveRecord::Base
  has_many :spells
  has_many :students, :through => :spells
end
