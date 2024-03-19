class CreateSppBatches < ActiveRecord::Migration[7.1]
  def change
    create_table :spp_batches do |t|
      t.datetime :start_at
      t.datetime :end_at

      t.timestamps
    end
  end
end
