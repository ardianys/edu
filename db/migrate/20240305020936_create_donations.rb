class CreateDonations < ActiveRecord::Migration[7.1]
  def change
    create_table :donations do |t|
      t.references :campaign, null: false, foreign_key: true
      t.integer :amount
      t.string :name
      t.string :email
      t.string :telephone
      t.boolean :anonymous
      t.string :payment_type
      t.string :dua

      t.timestamps
    end
  end
end
