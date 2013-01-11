class CreateSalaries < ActiveRecord::Migration
  def change
    create_table :salaries do |t|
      t.integer :mes
      t.currency :salario_bruto
      t.currency :bonus
      t.currency :extra
      t.currency :coste_empresa
      t.integer :dias_trabajados

      t.timestamps
    end
  end
end
