class AddAttachmentImage1Image2Image3ToPerformers < ActiveRecord::Migration
  def self.up
    change_table :performers do |t|
      t.attachment :image1
      t.attachment :image2
      t.attachment :image3
    end
  end

  def self.down
    remove_attachment :performers, :image1
    remove_attachment :performers, :image2
    remove_attachment :performers, :image3
  end
end
