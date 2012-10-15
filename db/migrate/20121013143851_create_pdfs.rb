class CreatePdfs < ActiveRecord::Migration
  def change
    create_table :pdfs do |t|
      t.string :merge_id
      t.string :file_name
      t.string :file

      t.timestamps
    end
  end
end
