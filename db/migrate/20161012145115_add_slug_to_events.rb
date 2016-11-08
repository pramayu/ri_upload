class AddSlugToEvents < ActiveRecord::Migration
  def change
    add_column :events, :slug, :string, unique: true, index: true
  end
end
