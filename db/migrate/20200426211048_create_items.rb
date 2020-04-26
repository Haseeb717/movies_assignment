class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.string :title
      t.string :plot
      t.string :type
      t.integer :serial_number

      t.timestamps
    end
  end
end
