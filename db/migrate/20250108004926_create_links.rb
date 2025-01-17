class CreateLinks < ActiveRecord::Migration[8.0]
  def change
    create_table :links do |t|
      t.references :project, null: false, foreign_key: true
      t.string :link_type
      t.string :url

      t.timestamps
    end
  end
end
