class CreatePosts < ActiveRecord::Migration[7.1]
  def change
    create_table :posts do |t|
      t.string :title
      t.string :content
      t.string :pict

      t.timestamps
    end
  end
end
