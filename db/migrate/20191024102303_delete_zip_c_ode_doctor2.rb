class DeleteZipCOdeDoctor2 < ActiveRecord::Migration[5.2]
  def change
 	remove_column :doctors, :zip_code, :string, null: false, default: ''
  end
end
