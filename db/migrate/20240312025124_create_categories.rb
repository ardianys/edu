class CreateCategories < ActiveRecord::Migration[7.1]
  def change
    create_table :categories do |t|
      t.string :title

      t.timestamps
    end

    add_column :campaigns, :category_id, :integer
    add_index :campaigns, :category_id
  end
end
