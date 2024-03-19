class CreateSppStudents < ActiveRecord::Migration[7.1]
  def change
    create_table :spp_students do |t|
      t.references :spp_batch, null: false, foreign_key: true
      t.string :nis
      t.string :name
      t.string :gender
      t.datetime :birth_at
      t.string :address
      t.string :pict
      t.string :father
      t.string :mother
      t.string :phone
      t.string :email

      t.timestamps
    end
  end
end
