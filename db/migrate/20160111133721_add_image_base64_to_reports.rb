class AddImageBase64ToReports < ActiveRecord::Migration
  def change
    add_column :reports, :image_base64, :text

  end
end
