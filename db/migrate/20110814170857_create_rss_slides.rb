class CreateRssSlides < ActiveRecord::Migration
  def self.up
    create_table :rss_slides, {:inherits => :slide} do |t|
      t.string :rss_url

      t.timestamps
    end
  end

  def self.down
    drop_table :rss_slides
  end
end
