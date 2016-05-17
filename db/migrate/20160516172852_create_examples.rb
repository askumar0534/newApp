class CreateExamples < ActiveRecord::Migration
  def change
    create_table :examples do |t|
      t.string :my_file

      t.timestamps
    end
  end
end
