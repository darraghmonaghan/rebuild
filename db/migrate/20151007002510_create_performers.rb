class CreatePerformers < ActiveRecord::Migration
  def change
    create_table :performers do |t|
      t.string :performer_email
      t.string :city
      t.integer :category_id
      t.string :subcategory
      t.string :hourly_rate
      t.string :description

      t.timestamps null: false
    end
  end
end
