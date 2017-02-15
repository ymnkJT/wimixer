class CreatePieces < ActiveRecord::Migration
  def change
    create_table :pieces do |t|
      t.string     :title
      t.string     :composer
      t.string     :arranger
      t.string     :publisher
      t.timestamps null: false
    end
  end
end
