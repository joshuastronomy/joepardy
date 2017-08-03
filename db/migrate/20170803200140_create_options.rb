class CreateOptions < ActiveRecord::Migration[5.1]
  def change
    create_table :options do |t|
      t.string :body
      t.boolean :correct

      t.timestamps
    end
  end
end
