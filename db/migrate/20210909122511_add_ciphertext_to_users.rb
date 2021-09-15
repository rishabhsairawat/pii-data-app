class AddCiphertextToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :email_ciphertext, :text
    add_column :users, :email_bidx, :string
    add_index :users, :email_bidx

    add_column :users, :mobile_ciphertext, :text
    add_column :users, :mobile_bidx, :string
    add_index :users, :mobile_bidx
  end
end
