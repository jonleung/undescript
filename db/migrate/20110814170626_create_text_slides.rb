class CreateTextSlides < ActiveRecord::Migration
  def self.up
    create_table :text_slides, {:inherits => :slide} do |t|
      t.text :html

      t.timestamps
    end
  end

  def self.down
    drop_table :text_slides
  end
end
