class RemoveColumns < ActiveRecord::Migration[5.1]

  def self.up
    remove_column :quizzes, :title
  end

  def self.down
    add_column :quizzes, :title, :string
  end

end
