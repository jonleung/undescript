class CreateSlideshows < ActiveRecord::Migration
  def self.up
    create_table :slideshows do |t|
      t.string :name
      t.text :slide_order_hash

      t.timestamps
    end
  end

  def self.down
    drop_table :slideshows
  end
end
