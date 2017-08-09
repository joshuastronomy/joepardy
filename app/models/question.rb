# == Schema Information
#
# Table name: questions
#
#  id         :integer          not null, primary key
#  body       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Question < ApplicationRecord
  has_many :options, dependent: :destroy
  has_and_belongs_to_many :quizzes
  belongs_to :user
end
