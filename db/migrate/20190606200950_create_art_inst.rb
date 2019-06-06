class CreateArtInst < ActiveRecord::Migration
  def change
    create_table :artinsts do |t|
      t.integer :artist_id
      t.integer :instrument_id
    end
  end
end
