class CreateImcs < ActiveRecord::Migration[5.2]
  def change
    create_table :imcs do |t|

      t.timestamps
    end
  end
end
