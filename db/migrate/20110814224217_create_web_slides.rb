class CreateWebSlides < ActiveRecord::Migration
  def self.up
    create_table :web_slides, {:inherits => :slide} do |t|
      t.string :site_url

      t.timestamps
    end
  end

  def self.down
    drop_table :web_slides
  end
end
