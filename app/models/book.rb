class Book < ActiveRecord::Base
	has_and_belongs_to_many :ages
	belongs_to :category
end
