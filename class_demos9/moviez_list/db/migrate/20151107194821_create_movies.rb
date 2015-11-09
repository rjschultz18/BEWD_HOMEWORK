class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :name
      t.string :year
      t.belongs_to :director, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
