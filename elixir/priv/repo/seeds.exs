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

alias Homework.Users.User
alias Homework.Merchants.Merchant

Homework.Repo.insert!(%User{dob: "02251990", first_name: "Heather", last_name: "jemmett"})
Homework.Repo.insert!(%Merchant{name: "Veridian Dynamics", description: "We don't like killing you."})


