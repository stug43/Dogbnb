class Dog < ApplicationRecord
	belongs_to :city
	has_many :stroll_dog_lists
	has_many :strolls, through: :stroll_dog_lists
	has_many :dogsitters, through: :strolls
end
