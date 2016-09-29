class CreateLoginLogs < ActiveRecord::Migration[5.0]
  def change
    create_table :login_logs do |t|
      t.string :user_ip
      t.string :user_agent
      t.string :user_name
      t.datetime :log_in_time

      t.timestamps
    end
  end
end
