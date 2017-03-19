class Todolist < ApplicationRecord
	has_many :todoitems
  belongs_to :user
end
