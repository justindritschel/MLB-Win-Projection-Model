#Converting American Odds to Implied Probability
odds_to_prob <- function(odds) {
  
  if (odds > 0) {
    imp_prob <<- odds / (odds + 100)
  } else {
    imp_prob <<- 1 - (100 / (abs(odds) + 100))
  }
  paste("Implied Probability of the Sportsbook odds:", imp_prob)
}


expected_value_of_bet <- function(potential_winnings = bet / 1 - imp_prob, model_prob, bet = 100, imp_prob){
  paste("Expected value of your bet",((potential_winnings * model_prob) - (bet * imp_prob)))
}
#Where model_prob is defined as the model's probability of winning x number of games
