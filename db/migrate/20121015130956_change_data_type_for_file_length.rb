class ChangeDataTypeForFileLength < ActiveRecord::Migration
  def up
    change_table :pdfs do |t|
      t.change :file, :text, :limit => nil
    end
  end


  def down
    t.change :file, :text
  end
end
