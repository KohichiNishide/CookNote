@SimpleNote.Views.NoteView = Backbone.View.extend
  events:
    "click a.new-note-btn" : "navigateToNewNote"

  initialize: ->
    console.log("NoteView is initialized")

  render: ->
    this

  navigateToNewNote: ->
    console.log("navigateToNewNote")

