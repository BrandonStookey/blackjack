class window.CardView extends Backbone.View
  className: 'card'

  initialize: -> @render()

  render: ->
    @$el.children().detach()
    @$el.html('<img className = "cardImg" src="'+ @model.get('img') + '">')
    @$el.addClass 'covered' unless @model.get 'revealed'
