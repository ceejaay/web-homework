defmodule Homework.Repo.Migrations.CreateCompanies do
  use Ecto.Migration

  def change do
    create table(:companies) do
      add :name, :string
      add :credit_line, :string
      add :available_credit, :string
      add :transactions, :string
    end
  end
end
