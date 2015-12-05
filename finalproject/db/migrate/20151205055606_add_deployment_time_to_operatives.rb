class AddDeploymentTimeToOperatives < ActiveRecord::Migration
  def change
    add_column :operatives, :deployment_time, :time
  end
end
