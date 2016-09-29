class AddLoginLogToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :user_ip, :string
    add_column :users, :user_agent, :string
    add_column :users, :log_in_time, :datetime
  end
end
