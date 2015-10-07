class AddBooleanToUsers < ActiveRecord::Migration
  def change
    add_column :users, :performer, :boolean, default: false
  end
end
