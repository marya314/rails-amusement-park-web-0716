class CreateUsers < ActiveRecord::Migration
  # Write your migrations here

  create_table :users do |t|
      t.string :name
      t.string :password
      t.string :password_digest
      t.integer :nausea
      t.integer :happiness
      t.integer :tickets
      t.integer :height
  end

end
