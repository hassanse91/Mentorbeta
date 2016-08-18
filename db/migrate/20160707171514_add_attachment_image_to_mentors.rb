class AddAttachmentImageToMentors < ActiveRecord::Migration
  def self.up
    change_table :mentors do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :mentors, :image
  end
end
