# TODO: Refactor this model to use an internal Game Model instead
# of containing the game logic directly.
class window.App extends Backbone.Model
  initialize: ->
    @set 'deck', deck = new Deck()
    @set 'playerHand', deck.dealPlayer()
    @set 'dealerHand', deck.dealDealer()

  standChecker: ->
    if @get('playerHand').minScore() > @get('dealerHand').minScore()
      alert 'You won dude!'
      else
        alert 'Dealer takes your $$$$$'  






 
