class AddSlugToJam < ActiveRecord::Migration

  def change
    add_column :jams, :slug, :string
  end
  
end