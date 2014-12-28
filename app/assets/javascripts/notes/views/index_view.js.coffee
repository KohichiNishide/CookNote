#= require_tree ../templates
@SimpleNote.Views.IndexView = Backbone.View.extend
  events:
    "click a.new-note-btn" : "navigateToNewNote"
  
  initialize: ->
    console.log("IndexView is initialized!")
    _.bindAll(this)
    @collection.fetch
      success: (model, res) ->
        console.log("fetch() is success")  
      error: (model, res) ->
        console.log("fetch() is error")  

  render: ->
    @collection.each ((item) ->
      @addItemView item
      return
    ), this
    this

  addItemView: (note) ->
    itemView = new SimpleNote.Views.IndexItemView(model: note)
    @$el.append itemView.render().el

  navigateToNewNote: ->
    console.log("navigateToNewNote")
