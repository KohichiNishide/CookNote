#= require_tree ../templates
@SimpleNote.Views.IndexView = Backbone.View.extend
  events:
    "click a.new-note-btn" : "navigateToNewNote"
  
  initialize: ->
    console.log("IndexView is initialized!")
    _.bindAll(this)
    @listenTo @collection, 'reset', @render

  render: ->
    console.log("index_view is rendered")
    this

  addItemView: (note) ->
    itemView = new SimpleNote.Views.IndexItemView(model: note)
    @$el.append itemView.render().el

  navigateToNewNote: ->
    console.log("navigateToNewNote")
