class Department < ActiveRecord::Base
  has_many :users
  validates :nombre, :uniqueness => true
  validates :nombre, :presence => true
end
