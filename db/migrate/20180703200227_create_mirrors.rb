class CreateMirrors < ActiveRecord::Migration[5.2]
  def change
    create_table :mirrors do |t|
      t.integer :user_id

      t.timestamps
    end
  end
end
