class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :email_address
      t.string :password
      t.string :username

      t.timestamps
    end
  end
end
