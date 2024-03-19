class CreateSppInvoices < ActiveRecord::Migration[7.1]
  def change
    create_table :spp_invoices do |t|
      t.references :spp_student, null: false, foreign_key: true
      t.references :spp_category, null: false, foreign_key: true
      t.integer :amount
      t.integer :paid_amount
      t.string :status

      t.timestamps
    end
  end
end
