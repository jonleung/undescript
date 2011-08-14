class CreateAnalyticsSlides < ActiveRecord::Migration
  def self.up
    create_table :analytics_slides, {:inherits => :slide} do |t|
      t.string :username
      t.string :password
      t.string :property

      t.timestamps
    end
  end

  def self.down
    drop_table :analytics_slides
  end
end
