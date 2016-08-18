class AddUserIdToMatieres < ActiveRecord::Migration
  def change
    add_column :matieres, :user_id, :integer
  end
end
