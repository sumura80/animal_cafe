class AddAdminToUsers < ActiveRecord::Migration[5.1]
  def change
  	# adminを設定するためにdefault: falseを追加
    add_column :users, :admin, :boolean, default: false
  end
end
