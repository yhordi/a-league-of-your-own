class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :password
      t.integer :wins, default: 0
      t.integer :losses, default: 0
      t.timestamps null: false
    end
  end
end
