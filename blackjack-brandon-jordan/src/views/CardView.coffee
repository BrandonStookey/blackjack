class window.CardView extends Backbone.View
  className: 'card'

  initialize: -> @render()

  render: ->
    @$el.children().detach()
    @$el.html('<img className = "cardImg" src="'+ @model.get('img') + '">')
    # @el.css('background-image', url(@model.get('img'))
    # @$el.removeClass '.card' unless @model.get 'revealed'
    @$el.addClass 'covered' unless @model.get 'revealed'


    # ('.covered'))$el.html('<img className = "cardImg" src="./img/card-back.png">') 
# $(".create").removeClass("cove")
