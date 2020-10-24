class CreateInstrumentPosts < ActiveRecord::Migration[6.0]
  def change
    create_table :instrument_posts do |t|
      t.integer :post_id
      t.integer :instrument_id

      t.timestamps
    end
  end
end
