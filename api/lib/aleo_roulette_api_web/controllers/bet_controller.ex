defmodule AleoRouletteApiWeb.BetController do
  use AleoRouletteApiWeb, :controller
  alias AleoRouletteApi.Roulette.Game

  def mint_casino_record(conn, %{
        "amount" => amount
      }) do
    casino_token_record = Game.casino_initial_token_record(amount)

    conn
    |> render("token_record.json", token: casino_token_record)
  end
end
