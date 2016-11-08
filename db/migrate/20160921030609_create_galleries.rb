class CreateGalleries < ActiveRecord::Migration
  def change
    create_table :galleries do |t|
      t.string :source
      t.references :event, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
