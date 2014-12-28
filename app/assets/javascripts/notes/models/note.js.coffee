@SimpleNote.Models.Note = Backbone.Model.extend
  defaults:
    title: ''
    raw_body:''
    body:''

  initialize: ->
    console.log("note is initialized")
 
@SimpleNote.Collections.NoteCollection = Backbone.Collection.extend
  model: SimpleNote.Models.Note
  url: '/notes'
