class AddDefaultWalletToUsers < ActiveRecord::Migration[6.1]
  def change
    User.update_all(wallet: 50)
    change_column :users, :wallet, :integer, default: 50, null: false
  end
end
