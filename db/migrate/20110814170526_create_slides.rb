class CreateSlides < ActiveRecord::Migration
  def self.up
    create_table :slides do |t|
      t.references :slideshow
      t.string :subtype
      t.string :title
      t.integer :duration

      t.timestamps
    end
  end

  def self.down
    drop_table :slides
  end
end
