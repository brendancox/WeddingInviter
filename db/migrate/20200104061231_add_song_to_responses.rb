class AddSongToResponses < ActiveRecord::Migration[6.0]
  def change
    add_column :responses, :song, :string
  end
end
