class window.Hand extends Backbone.Collection
  model: Card

  initialize: (array, @deck, @isDealer) -> 
    @on('add', @scoreChecker)


  hit: ->
    @add(@deck.pop())

  bet: ->
    alert 'You bet the whole farm!!!!!!'


  hasAce: -> @reduce (memo, card) ->
    memo or card.get('value') is 1
  , 0

  minScore: -> @reduce (score, card) ->
    score + if card.get 'revealed' then card.get 'value' else 0
  , 0

  scores: ->
    # The scores are an array of potential scores.
    # Usually, that array contains one element. That is the only score.
    # when there is an ace, it offers you two scores - the original score, and score + 10.
      [@minScore(), @minScore() + 10 * @hasAce()];


  scoreChecker: ->
    if not @isDealer
      if @minScore() > 21
        alert 'Busted Dude! Dealer wins!'

  flipCheck: ->
    if @isDealer
      @at(0).set('revealed', true);

