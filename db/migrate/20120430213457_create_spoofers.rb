class CreateSpoofers < ActiveRecord::Migration
  def change
    create_table :spoofers do |t|
      t.string :from
      t.string :to
      t.string :subject
      t.text :message

      t.timestamps
    end
  end
end
