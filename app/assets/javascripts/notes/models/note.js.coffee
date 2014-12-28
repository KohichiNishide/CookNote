@SimpleNote.Models.Note = Backbone.Model.extend
  defaults:
    title: ''
    raw_body:''
    body:''

  initialize: ->
    console.log("initialize")
 
@SimpleNote.Collections.NoteCollection = Backbone.Collection.extend
  model: SimpleNote.Models.Note
  url: '/notes'
