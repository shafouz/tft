class CreateTraits < ActiveRecord::Migration[6.1]
  def change
    create_table :traits do |t|

      t.timestamps
    end
  end
end
