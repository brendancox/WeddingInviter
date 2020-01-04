class CreateResponses < ActiveRecord::Migration[6.0]
  def change
    create_table :responses do |t|
      t.string :guest1
      t.string :guest2
      t.integer :kids
      t.string :coming

      t.timestamps
    end
  end
end
