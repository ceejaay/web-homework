defmodule :"Elixir.Homework.Repo.Migrations.Add-company-column-to-transaction" do
  use Ecto.Migration

  def change do
    alter table(:transactions) do
      add :company_id, references(:company, type: :uuid, on_delete: :nothing)
    end


  end
end
