class AddAttachmentPerfavatarToPerformers < ActiveRecord::Migration
  def self.up
    change_table :performers do |t|
      t.attachment :perfavatar
    end
  end

  def self.down
    remove_attachment :performers, :perfavatar
  end
end
