@SimpleNote.Routers.NoteRouter = Backbone.Router.extend
  routes:
    "notes" : "indexNotes"
    "notes/new" : "newNote"
    "notes/:id" : "showNote"
    ".*" : "indexNotes"

  initialize: -> 
    console.log("router is initialized!") 
    @notes = new SimpleNote.Collections.NoteCollection()

  indexNotes: ->
    console.log("indexNotes")
    indexView = new SimpleNote.Views.IndexView(collection: @notes)
    @notes.fetch
      reset: true
      success: (model, res) ->
        console.log("fetch() is success")  
      error: (model, res) ->
        console.log("fetch() is error")  

  newNote: ->
    console.log("newNote")

  showNote: ->
    console.log("showNote")
