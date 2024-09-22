class CreateBelongTos < ActiveRecord::Migration[7.0]
  def change
    create_table :belong_tos do |t|

      t.timestamps
    end
  end
end
