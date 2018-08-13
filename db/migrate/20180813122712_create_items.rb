class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|

      t.belongs_to :organization, :index => true
      t.belongs_to :location, :index => true
      t.timestamps
    end
  end
end
