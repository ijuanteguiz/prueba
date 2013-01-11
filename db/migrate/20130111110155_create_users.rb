class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :nombre
      t.string :apellido
      t.string :nick
      t.string :password
      t.string :cargo

      t.timestamps
    end
      end
  
end
