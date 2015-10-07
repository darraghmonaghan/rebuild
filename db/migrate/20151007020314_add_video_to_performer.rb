class AddVideoToPerformer < ActiveRecord::Migration
  def change
    add_column :performers, :video1, :string
    add_column :performers, :video2, :string
    add_column :performers, :video3, :string
  end
end
