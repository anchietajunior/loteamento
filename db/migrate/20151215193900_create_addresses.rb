class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.string :place
      t.string :number
      t.string :complement
      t.string :cep
      t.references :customer, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
