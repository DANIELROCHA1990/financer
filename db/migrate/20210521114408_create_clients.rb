class CreateClients < ActiveRecord::Migration[6.1]
  def change
    create_table :clients do |t|
      t.string :name
      t.string :company_name
      t.string :document
      t.string :string
      t.string :email
      t.string :phone
      t.references :user, null: false, foreign_key: true
      t.text :notes
      t.string :status
      t.string :integer

      t.timestamps
    end
  end
end
