class CreateMirrorApps < ActiveRecord::Migration[5.2]
  def change
    create_table :mirror_apps do |t|
      t.integer :mirror_id
      t.integer :app_id

      t.timestamps
    end
  end
end
