defmodule Homework.Companies.Company do
  use Ecto.Schema
  import Ecto.Changeset
  alias Homework.Companies.Company

  @primary_key {:id, :binary_id, autogenerate: true}
  schema "company" do
    field :available_credit, :integer
    field :credit_line, :integer
    field :name, :string
    has_many :users, Company 

    timestamps()
  end

  @doc false
  def changeset(company, attrs) do
    company
    |> cast(attrs, [:name, :credit_line, :available_credit])
    |> validate_required([:name, :credit_line, :available_credit])
  end
end
