class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :username
      t.string :password_digest
      t.integer :total_score
      t.boolean :admin

      t.timestamps
    end
  end
end
