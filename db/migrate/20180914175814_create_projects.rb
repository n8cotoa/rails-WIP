class CreateProjects < ActiveRecord::Migration[5.2]
  def change
    create_table :projects do |t|
      t.string :name
      t.string :description
      t.string :repo_link
      t.string :deployment_link

      t.timestamps
    end
  end
end
