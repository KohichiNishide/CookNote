#= require_tree ../templates
@SimpleNote.Views.IndexView = Backbone.View.extend
  tagName: 'ul'
  events:
    "click a.new-note-btn" : "navigateToNewNote"
  
  initialize: ->
    console.log("IndexView is initialized!")
    _.bindAll(this)
    @listenTo @collection, 'reset', @render

  render: ->
    console.log("index_view is rendered")
    @collection.each ((note) ->
      @addItemView(note)
      console.log(note.get("title"))
      console.log(note.get("raw_body"))
      console.log(note.get("body"))
    ), this
    @$("#main").html(@el)
    this

  addItemView: (note) ->
    itemView = new SimpleNote.Views.IndexItemView(model: note)
    @$el.append itemView.render().el
    return

  navigateToNewNote: ->
    console.log("navigateToNewNote")
