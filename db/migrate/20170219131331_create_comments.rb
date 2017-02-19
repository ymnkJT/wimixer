class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.references :user, index: true, foreign_key: true
      t.references :piece, index: true, foreign_key: true
      t.text :content
      t.boolean :play, default: false

      t.timestamps null: false
    end
  end
end
