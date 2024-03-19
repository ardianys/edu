class CreateSppPayments < ActiveRecord::Migration[7.1]
  def change
    create_table :spp_payments do |t|
      t.references :spp_batch, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.references :spp_student, null: false, foreign_key: true
      t.references :spp_invoice, null: false, foreign_key: true
      t.string :tipe, default: "CASH" # CASH, TRANSFER
      t.integer :amount
      t.datetime :pay_at

      t.timestamps
    end
  end
end
