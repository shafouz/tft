class AddAttributesToItems < ActiveRecord::Migration[6.1]
  def change
    add_column :items, 'item', :jsonb
  end
end
