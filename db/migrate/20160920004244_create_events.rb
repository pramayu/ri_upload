class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.text :description
      t.string :image
      t.datetime :event_date

      t.timestamps null: false
    end
  end
end
