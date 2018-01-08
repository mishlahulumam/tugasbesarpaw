class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :username
      t.string :nama
      t.string :digest_password
      t.integer :status

      t.timestamps
    end
  end
end
