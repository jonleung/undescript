class CreateVideoSlides < ActiveRecord::Migration
  def self.up
    create_table :video_slides, {:inherits => :slide} do |t|
      t.string :video_url

      t.timestamps
    end
  end

  def self.down
    drop_table :video_slides
  end
end
