class RemoveTrackingFromUsers < ActiveRecord::Migration
  def change
    change_table :users do |t|
      t.remove :sign_in_count, :current_sign_in_at, :last_sign_in_at, :current_sign_in_ip, :last_sign_in_ip
    end
  end
end
