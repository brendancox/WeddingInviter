class AddEmailToResponses < ActiveRecord::Migration[6.0]
  def change
    add_column :responses, :email, :string
  end
end
