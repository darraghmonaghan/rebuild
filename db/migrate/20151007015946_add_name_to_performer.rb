class AddNameToPerformer < ActiveRecord::Migration
  def change
    add_column :performers, :performer_name, :string
    add_column :performers, :user_id, :integer
  end
end
