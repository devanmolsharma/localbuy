class CreateUsers < ActiveRecord::Migration[7.1]
  def change
    create_table :users do |t|
      t.string :full_name
      t.string :phone_number
      t.string :email
      t.boolean :verified
      t.text :address

      t.timestamps
    end
  end
end
