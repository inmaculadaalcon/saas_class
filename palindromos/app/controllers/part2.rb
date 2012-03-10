class WrongNumberOfPlayersError < StandardError ; end
class NoSuchStrategyError < StandardError ; end
def rps_game_winner(game)
raise WrongNumberOfPlayersError unless game.length == 2
player1=game[0]
player2=game[1]
raise NoSuchStrategyError unless ((player1[1].downcase == "r" || player1[1].downcase =="s" || player1[1].downcase =="p")&&(player2[1].downcase == "r" ||player2[1].downcase =="s" ||player2[1].downcase == "p"))
case player1[1].downcase
when "r"
  result=player2[1].downcase =="p"?  player2: player1
when "p"
  result= player2[1].downcase =="s"?  player2: player1
when "s"
  result= player2[1].downcase =="r"?  player2: player1
end
return result

end


def rps_tournament_winner(gamesList)
  juego1 = gamesList[0]
  juego2 = gamesList[1]
  if (!(String.try_convert(juego1[0]))) 
    juego1 =rps_tournament_winner(juego1)
    juego2 =rps_tournament_winner(juego2)
    result = rps_game_winner([juego1,juego2])
  else
    
    result = rps_game_winner([juego1,juego2])
  end

  return result
end
