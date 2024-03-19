class CreateSppCategories < ActiveRecord::Migration[7.1]
  def change
    create_table :spp_categories do |t|
      t.string :title

      t.timestamps
    end
  end
end
