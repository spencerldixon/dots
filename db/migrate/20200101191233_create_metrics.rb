class CreateMetrics < ActiveRecord::Migration[6.0]
  def change
    create_table :metrics do |t|
      t.references :track, null: false, foreign_key: true
      t.string :name
      t.text :description
      t.string :unit

      t.timestamps
    end
  end
end
