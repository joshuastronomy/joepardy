# == Schema Information
#
# Table name: quizzes
#
#  id         :integer          not null, primary key
#  title      :string
#  quiz_score :integer
#  published  :boolean
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Quiz < ApplicationRecord
  has_and_belongs_to_many :questions
  belongs_to :user
end
