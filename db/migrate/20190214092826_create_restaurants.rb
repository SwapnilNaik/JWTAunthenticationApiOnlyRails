class CreateRestaurants < ActiveRecord::Migration[5.2]
  def change
    create_table :restaurants do |t|
      t.string :res_name
      t.string :poc_name
      t.string :poc_email
      t.string :poc_contactno
      t.string :password_digest
      t.integer :otp
      t.timestamps
    end
  end
end
