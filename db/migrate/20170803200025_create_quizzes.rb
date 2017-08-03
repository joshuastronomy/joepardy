class CreateQuizzes < ActiveRecord::Migration[5.1]
  def change
    create_table :quizzes do |t|
      t.string :title
      t.integer :quiz_score
      t.boolean :published

      t.timestamps
    end
  end
end
