class Question < ApplicationRecord
  has_many :options
  belongs_to :quiz
end
