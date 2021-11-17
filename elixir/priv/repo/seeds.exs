# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     Homework.Repo.insert!(%Homework.SomeSchema{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.
#

defmodule Homework.DatabaseSeeder do
  alias Homework.Users.User
  alias Homework.Merchants.Merchant
  alias Homework.Faker
  alias Homework.Repo

  @first_name_list ["Maura", "heather", "Charly", "Tony", "Bruce"]
  @last_name_list ["Jemmett", "Bury", "Banner", "Stark", "Smith"]

  def insert_link do 
    Repo.insert! %User{
      first_name: (@first_name_list |> Enum.random),
      last_name: (@last_name_list |> Enum.random),
      dob: "02251975"
    }
  end

    def clear do
      Repo.delete_all(Users)
    end
end



(1..100) |> Enum.each(fn _ -> Homework.DatabaseSeeder.insert_link end)


# Homework.Repo.insert!(%User{dob: "02251990", first_name: "Chad"  , last_name: "jemmett"})
# Homework.Repo.insert!(%Merchant{name: "Veridian Dynamics", description: "We don't like killing you."})
# Homework.Repo.insert!(%User{dob: "02251975", first_name: "Heather", last_name: "Bury"})



