# blackjack_score.rb

VALID_CARDS = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 'King', 'Queen', 'Jack']
FACECARDS = ['King', 'Queen', 'Jack']

def blackjack_score(hand)
  score = 0
  aces = 0

  unless hand.length <=5
    raise ArgumentError, "Hand must contain 5 cards at most"
  end
  
  hand.each do |card|
    

    unless VALID_CARDS.include? card
      raise ArgumentError, "#{card} is an invalid card"
    end
    
    if FACECARDS.include?(card)
      score +=10
    elsif card == 1
      score +=1
      aces +=1
    else 
      score += card
    end
  end

  if score <= 11 && aces > 0
    score += 10
  end
 
      return score

end
