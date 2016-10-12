class RemoveFileNameFromMessages < ActiveRecord::Migration
  def change
    remove_column :messages, :filename, :string
  end
end
