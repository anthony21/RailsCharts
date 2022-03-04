class CreateStudents < ActiveRecord::Migration[7.0]
  def up
    create_table :students do |t|
          t.strng :First
          t.string :MI
          t.string :Last
          t.string :Prefix
          t.string :Address1
          t.string :Address2
          t.string :City
          t.string :State
          t.integer :Zip
          t.string :Education
          t.string :Income

          t.timestamps
    end

    def down
    end

  end
end
