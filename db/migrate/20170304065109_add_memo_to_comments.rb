class AddMemoToComments < ActiveRecord::Migration
  def change
    add_column :comments, :memo, :text
  end
end
