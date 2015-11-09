class CreateActorMovies < ActiveRecord::Migration
  def change
    create_table :actor_movies do |t|
      t.belongs_to :actor, index: true, foreign_key: true
      t.belongs_to :movie, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
