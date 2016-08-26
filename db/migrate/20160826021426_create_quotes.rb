class CreateQuotes < ActiveRecord::Migration
  def change
    create_table :quotes do |t|
      t.string :content
      t.string :userSender
      t.string :myth
      t.date :quoteDate

      t.timestamps
    end
  end
end
