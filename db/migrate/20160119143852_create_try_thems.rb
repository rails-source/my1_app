class CreateTryThems < ActiveRecord::Migration
  def change
    create_table :try_thems do |t|
      t.string :title
      t.text :description

      t.timestamps null: false
    end
  end
end
