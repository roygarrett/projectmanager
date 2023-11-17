class AddProjectIdToProject < ActiveRecord::Migration[7.0]
  def change
    add_column :projects, :project_id, :integer
  end
end
