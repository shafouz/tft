class CreateChampions < ActiveRecord::Migration[6.1]
  def change
    create_table :champions do |t|

      t.timestamps
    end
  end
end
