class CreateExperiments < ActiveRecord::Migration[6.0]
  def change
    create_table :experiments do |t|
      t.references :track, null: false, foreign_key: true
      t.string :name

      t.timestamps
    end
  end
end
