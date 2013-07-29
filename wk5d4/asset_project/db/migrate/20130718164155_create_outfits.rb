class CreateOutfits < ActiveRecord::Migration
  def change
    create_table :outfits do |t|
    	t.string :name
    	t.text :desription
    	t.string :color
    	t.string :size
      t.timestamps
    end
  end
end
