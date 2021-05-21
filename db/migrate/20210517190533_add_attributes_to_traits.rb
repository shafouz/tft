class AddAttributesToTraits < ActiveRecord::Migration[6.1]
  def change
    add_column :traits, 'details', :jsonb
  end
end
