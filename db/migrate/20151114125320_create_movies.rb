class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :name
      t.integer :year
      t.belongs_to :genre, index: true, foreign_key: true
      t.text :description

      t.timestamps null: false
    end
  end
end
