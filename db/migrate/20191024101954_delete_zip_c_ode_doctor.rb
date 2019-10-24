class DeleteZipCOdeDoctor < ActiveRecord::Migration[5.2]
  def change
  	    remove_column :doctors, :zip_Code
  end
end
