### Testing task 1:

# Carry out static testing on the code below.
# Comment on any errors that you see below.
```ruby

class CardGame # G shouldn't be capatalised


  def checkforAce(card) #naming convention isn't correct it should be check_for_ace
    if card.value = 1 # Missing an =, should be card.value == 1
      return true
    else
      return false
    end
  end

  dif highest_card(card1 card2) # shoulf be def not dif and there could be a , between the cards (card1, card2)
  if card1.value > card2.value
    return card # whould be card1
  else
    return card2
  end
end
end # an extra end

def self.cards_total(cards) # not indented correctly
  total # total has no value it should be total = 0
  for card in cards
    total += card.value
    return "You have a total of" + total
  end
end
```
