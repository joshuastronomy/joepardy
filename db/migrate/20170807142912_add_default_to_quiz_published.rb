class AddDefaultToQuizPublished < ActiveRecord::Migration[5.1]

  def up
    change_column :quizzes, :published, :boolean, default: false
  end

  def down
    change_column :quizzes, :published, :boolean, default: nil
  end

end
