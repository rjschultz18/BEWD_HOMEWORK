class CreateDirectors < ActiveRecord::Migration
  def change
    create_table :directors do |t|
      t.string :name
      t.string :birth_year

      t.timestamps null: false
    end
  end
end
