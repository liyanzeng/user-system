class CreateAccessTokens < ActiveRecord::Migration[5.0]
  def change
    create_table :access_tokens do |t|
      t.string :user_name
      t.string :token
      t.datetime :expire_in

      t.timestamps
    end
  end
end
