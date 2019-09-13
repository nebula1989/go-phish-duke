class CreatePhishes < ActiveRecord::Migration[5.0]
  def change
    create_table :phishes do |t|

      t.timestamps
    end
  end
end
