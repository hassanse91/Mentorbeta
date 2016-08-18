class CreateMentors < ActiveRecord::Migration
  def change
    create_table :mentors do |t|
      t.string :FirstName
      t.string :LastName
      t.text :presentation
      t.date :BirthDay
      t.timestamps null: false
    end
  end
end
