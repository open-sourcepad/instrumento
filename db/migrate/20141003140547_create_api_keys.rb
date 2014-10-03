class CreateApiKeys < ActiveRecord::Migration

  def change
    create_table :api_keys do |t|
      t.string :name, null: false
      t.string :token, null: false
      t.timestamps
    end
  end

end