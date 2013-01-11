class CreateDepartments < ActiveRecord::Migration
  def change
    create_table :departments do |t|
      t.string :nombre
      t.text :descripcion

      t.timestamps
    end
  end
end
