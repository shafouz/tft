class AddAttributesToChampions < ActiveRecord::Migration[6.1]
  def change
    add_column :champions, 'champion', :jsonb
  end
end
