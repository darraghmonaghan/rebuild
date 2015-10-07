class AddNameToPerformer < ActiveRecord::Migration
  def change
    add_column :performers, :performer_name, :string
  end
end
