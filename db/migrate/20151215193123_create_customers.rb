class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :name
      t.string :cpf
      t.string :first_tel
      t.string :second_tel
      t.string :email
      t.string :marital_state
      t.boolean :maried
      t.string :gender

      t.timestamps null: false
    end
  end
end
