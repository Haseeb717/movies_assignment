class CreateEpisodes < ActiveRecord::Migration[5.2]
  def change
    create_table :episodes do |t|
      t.string :title
      t.string :plot
      t.references :item, foreign_key: true

      t.timestamps
    end
  end
end
