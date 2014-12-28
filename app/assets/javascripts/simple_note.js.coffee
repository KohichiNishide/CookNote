#= require_self
#= require_tree ./notes/routers
#= require_tree ./notes/models
#= require_tree ./notes/views

@SimpleNote =
  Models: {}
  Collections: {}
  Views: {}
  Routers: {}
  init: ->
    @router = new SimpleNote.Routers.NoteRouter()
    Backbone.history.start(pushState :true)

$ ->
  SimpleNote.init()
