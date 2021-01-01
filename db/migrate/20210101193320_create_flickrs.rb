class CreateFlickrs < ActiveRecord::Migration[6.0]
  def change
    create_table :flickrs do |t|
      t.string :key
      t.string :secret

      t.timestamps
    end
  end
end
