class window.CardView extends Backbone.View
  className: 'card'

  template: _.template '<%= img %>'
# "<img id='user-card-img' src='" + img + "'/>"
  initialize: -> @render()

  render: ->
    @$el.children().detach()
    @$el.html('<img className = "cardImg" src="'+ @model.get('img') + '">')
    # @$el.html@template @model.attributes
    @$el.addClass 'covered' unless @model.get 'revealed'

