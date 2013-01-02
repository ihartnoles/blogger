class CreateXmldemos < ActiveRecord::Migration
  def change
    create_table :xmldemos do |t|

      t.timestamps
    end
  end
end
