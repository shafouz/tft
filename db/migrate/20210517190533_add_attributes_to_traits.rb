class AddAttributesToTraits < ActiveRecord::Migration[6.1]
  def change
    add_column :traits, 'trait', :jsonb
  end
end
