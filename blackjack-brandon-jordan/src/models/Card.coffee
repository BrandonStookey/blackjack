class window.Card extends Backbone.Model
  initialize: (params) ->
    @set
      revealed: true
      value: if !params.rank or 10 < params.rank then 10 else params.rank
      suitName: ['spades', 'diamonds', 'clubs', 'hearts'][params.suit]
      rankName: switch params.rank
        when 0 then 'King'
        when 1 then 'Ace'
        when 11 then 'Jack'
        when 12 then 'Queen'
        else params.rank
    @set
      img: './img/cards/' + @get('value') + '-' + @get('suitName') + '.png';
      console.log 'img',  './img/cards/' + @get('value') + '-' + @get('suitName') + '.png';  
  flip: ->
    @set 'revealed', !@get 'revealed'
    @
    #img: 'images/' + rank[rv] + '_of_' + suite[s] + '.png'

