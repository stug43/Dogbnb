class Stroll < ApplicationRecord
	has_many :stroll_dog_lists
	has_many :dogs, through: :stroll_dog_lists
	belongs_to :city
	belongs_to :dogsitter
end
