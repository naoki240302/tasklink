class DropTableBelongTo < ActiveRecord::Migration[7.0]
  def change
    drop_table :belong_tos do |t|
      t.timestamps
    end
  end
end
