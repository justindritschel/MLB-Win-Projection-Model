#Converting American Odds to Implied Probability
odds_to_prob <- function(odds) {
  
  if (odds > 0) {
    imp_prob <<- odds / (odds + 100)
  } else {
    imp_prob <<- 1 - (100 / (abs(odds) + 100))
  }
  paste("Implied Probability of the Sportsbook odds:", imp_prob)
}


expected_value_of_bet <- function( model_prob, bet = 100, imp_prob){
  potential_winnings <- bet / imp_prob
  paste("Expected value of your bet",((potential_winnings * model_prob) - bet))
}
#Where model_prob is defined as the model's probability of winning x number of games
