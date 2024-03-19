class CreateSppInvoices < ActiveRecord::Migration[7.1]
  def change
    create_table :spp_invoices do |t|
      t.references :student, null: false, foreign_key: true
      t.references :category, null: false, foreign_key: true
      t.integer :amount
      t.integer :paid_amount
      t.string :status

      t.timestamps
    end
  end
end
