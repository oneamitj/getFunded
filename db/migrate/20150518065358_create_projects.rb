class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :title
      t.text :abstract
      t.text :description
      t.float :budget

      t.timestamps
    end
  end
end
