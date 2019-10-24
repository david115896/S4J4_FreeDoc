class ChangeCityColumnName < ActiveRecord::Migration[5.2]
  def change
  	    rename_column :cities, :name, :zip_code
  end
end
