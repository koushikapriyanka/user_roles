class CreateUserMeta < ActiveRecord::Migration[5.2]
  def change
    create_table :user_meta do |t|
      t.references :user, foreign_key: true
      t.string :meta_key
      t.string :meta_value

      t.timestamps
    end
    add_index :user_meta, [:user_id, :meta_key], unique: true
  end
end
