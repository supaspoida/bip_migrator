class CreateShows < ActiveRecord::Migration
  def self.up
    create_table :shows do |t|
      t.integer :venue_id
      t.datetime :date
      t.text :notes, :limit => 5000

      t.timestamps
    end
  end

  def self.down
    drop_table :shows
  end
end
