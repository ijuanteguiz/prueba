class User < ActiveRecord::Base
  
  validates :nombre, :presence => true
  validates :nombre, :lenght => { :minimum => 2 }
  validates :nick, :uniqueness => { :message => "Este nombre ya lo tiene un usuario" }
  has_many :salaries
  belongs_to :department
  has_many :parte_contenidos
  
end
