class CreateParteContenidos < ActiveRecord::Migration
  def change
    create_table :parte_contenidos do |t|
      t.float :tiempo_produccion_rte
      t.integer :restaurantes_producidos
      t.float :tiempo_produccion_carta
      t.integer :cartas_producidas
      t.float :tiempo_modificacion_asociados
      t.integer :modificaciones_asociados
      t.float :tiempo_modificacion_afiliados
      t.integer :modificaciones_afiliados
      t.float :tiempo_revision_restaurante
      t.integer :restaurantes_revisados
      t.float :tiempo_revision_carta
      t.integer :cartas_revisadas
      t.float :tiempo_revision_modificaciones_asociados
      t.integer :modificaciones_asociados_revisadas
      t.float :tiempo_revision_modificaciones_afiliados
      t.integer :modificaciones_afiliados_revisadas
      t.float :tiempo_gestion
      t.float :tiempo_otras_tareas
      t.text :descripcion_otras_tareas
      t.text :comentario
      t.date :fecha

      t.timestamps
    end
  end
end
