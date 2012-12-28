class Tag < ActiveRecord::Base
  #establish relationships between tables
  attr_accessible :name
  has_many  :taggings, dependent: :destroy
  has_many  :articles, through: :taggings

  	def to_s
	  name
	end
end
