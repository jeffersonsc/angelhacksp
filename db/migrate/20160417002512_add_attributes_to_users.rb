class AddAttributesToUsers < ActiveRecord::Migration
  def change
    add_column :users, :auth_token, :string
    add_column :users, :nome, :string
    add_column :users, :condicao_medica, :string
    add_column :users, :notas_medicas, :string
    add_column :users, :alegrias, :string
    add_column :users, :medicamentos, :string
    add_column :users, :contato_emergencia, :string
    add_column :users, :tipo_sanguinio, :string
    add_column :users, :peso, :string
    add_column :users, :altura, :string
    add_column :users, :data_nascimento, :string
    add_column :users, :cadastro_ativo, :boolean
  end
end
