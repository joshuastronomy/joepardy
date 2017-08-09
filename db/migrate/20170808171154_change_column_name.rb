class ChangeColumnName < ActiveRecord::Migration[5.1]

  def change
     rename_column :questions, :quizzes_id, :quiz_id
  end

end
