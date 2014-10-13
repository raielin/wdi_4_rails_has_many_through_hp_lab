class CreateSpells < ActiveRecord::Migration
  def change
    create_table :spells do |t|
      t.string :spell_name
      t.belongs_to :student, index: true
      t.string :course
      t.string :belongs_to
    end
  end
end
