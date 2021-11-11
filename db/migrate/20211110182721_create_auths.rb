class CreateAuths < ActiveRecord::Migration[6.1]
  def change
    create_table :auths do |t|
      t.string :email
      t.string :name
      t.string :first_name
      t.string :password
      t.string :password_confirm
      t.string :gender
      t.string :country

      t.timestamps
    end
  end
end
