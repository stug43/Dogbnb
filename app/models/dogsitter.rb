class Dogsitter < ApplicationRecord
	belongs_to :city
	has_many :strolls
	has_many :stroll_dog_lists, through: :strolls
	has_many :dogs, through: :stroll_dog_lists
end
