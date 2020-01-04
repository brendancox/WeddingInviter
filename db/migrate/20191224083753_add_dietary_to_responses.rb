class AddDietaryToResponses < ActiveRecord::Migration[6.0]
  def change
    add_column :responses, :dietary, :string
  end
end
