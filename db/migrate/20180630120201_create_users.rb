class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.string :surname
      t.string :email
      t.string :username
      t.string :password_digest
      t.string :remember_digest
      t.boolean :isteacher
      t.timestamps
    end
  end
end
