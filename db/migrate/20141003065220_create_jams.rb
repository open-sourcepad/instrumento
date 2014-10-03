class CreateJams < ActiveRecord::Migration

  def change
    create_table :jams do |t|
      t.string :name, null: false
      t.timestamps
    end
  end

end