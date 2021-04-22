class AddTokenIndexToToken < ActiveRecord::Migration[6.1]
  def change
    add_index :tokenizable_tokens, :token, unique: true
  end
end
