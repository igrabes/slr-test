class CreateWufoos < ActiveRecord::Migration
  def change
    create_table :wufoos do |t|

      t.timestamps
    end
  end
end
