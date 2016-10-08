class AddFieldsToMessages < ActiveRecord::Migration
  def change
    add_column :messages, :filename, :string
    add_column :messages, :speaker, :string
    add_reference :messages, :conference, index: true, foreign_key: true
    add_column :messages, :duration, :string
    add_column :messages, :message_number, :integer
  end
end
