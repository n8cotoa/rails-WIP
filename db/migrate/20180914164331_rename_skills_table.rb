class RenameSkillsTable < ActiveRecord::Migration[5.2]
  def change
    rename_table :skills_tables, :skills
  end
end
