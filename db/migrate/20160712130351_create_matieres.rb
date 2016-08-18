class CreateMatieres < ActiveRecord::Migration
  def change
    create_table :matieres do |t|
      t.string :name
      t.text :presentation
      t.references :mentor, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
