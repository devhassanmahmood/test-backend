class CreateApps < ActiveRecord::Migration[5.2]
  def change
    create_table :apps do |t|
      t.string :position
      t.string :name
      t.string :default_position
      t.timestamps
    end
  end
end
