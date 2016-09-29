class AddUseragentToAccesstoken < ActiveRecord::Migration[5.0]
  def change
    add_column :access_tokens, :user_agent, :string
  end
end
