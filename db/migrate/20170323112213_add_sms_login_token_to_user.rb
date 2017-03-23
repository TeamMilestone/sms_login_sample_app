class AddSmsLoginTokenToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :sms_login_token, :string
    add_index :users, :sms_login_token
    add_column :users, :sms_login_token_created_at, :datetime
  end
end
