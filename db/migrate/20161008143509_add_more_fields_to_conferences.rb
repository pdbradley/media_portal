class AddMoreFieldsToConferences < ActiveRecord::Migration
  def change
    add_column :conferences, :location, :string
  end
end
