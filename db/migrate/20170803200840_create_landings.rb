class CreateLandings < ActiveRecord::Migration[5.1]
  def change
    create_table :landings do |t|

      t.timestamps
    end
  end
end
