class AddFieldsToAddress < ActiveRecord::Migration
  def change
    add_column :addresses, :city, :string
    add_column :addresses, :state, :string
  end
end
