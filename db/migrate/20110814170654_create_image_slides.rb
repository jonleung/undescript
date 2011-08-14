class CreateImageSlides < ActiveRecord::Migration
  def self.up
    create_table :image_slides, {:inherits => :slide} do |t|
      t.string :image_url

      t.timestamps
    end
  end

  def self.down
    drop_table :image_slides
  end
end
