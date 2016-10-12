class AddAttachmentFilenameToMessages < ActiveRecord::Migration
  def self.up
    change_table :messages do |t|
      t.attachment :media
    end
  end

  def self.down
    remove_attachment :messages, :media
  end
end
