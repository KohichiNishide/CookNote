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

  newNote: ->
    console.log("newNote")

  showNote: ->
    console.log("showNote")
