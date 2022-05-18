class Company < ApplicationRecord
	has_many :tasks, dependent: :destroy

	validates :name, presence: true
	validates :note, presence: true, length: { minimum: 5 }
end
