class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.text :fullname

      t.timestamps
    end
  end
end
