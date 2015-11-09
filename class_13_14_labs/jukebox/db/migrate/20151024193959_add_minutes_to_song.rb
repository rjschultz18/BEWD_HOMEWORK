class AddMinutesToSong < ActiveRecord::Migration
  def change
    add_column :songs, :minutes, :integer
  end
end
