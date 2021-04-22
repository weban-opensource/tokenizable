class CreateTokenizableTokens < ActiveRecord::Migration[6.1]
  def change
    create_table :tokenizable_tokens do |t|
      t.references :ownerable, polymorphic: true
      t.string :token
      t.integer :used, default: 0
      t.datetime :last_use

      t.timestamps
    end
  end
end
