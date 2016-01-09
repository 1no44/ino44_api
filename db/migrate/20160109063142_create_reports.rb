class CreateReports < ActiveRecord::Migration
  def change
    create_table :reports do |t|
      t.float :latitude
      t.float :longitude
      t.text :comment
      t.datetime :date_reported

      t.timestamps
    end
  end
end
