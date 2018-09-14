class CreateSkillsTable < ActiveRecord::Migration[5.2]
  def change
    create_table :skills_tables do |t|
      t.string :name
      t.integer :experience

      t.timestamps
    end
  end
end
