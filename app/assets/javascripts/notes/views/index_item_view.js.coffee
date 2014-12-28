#= require_tree ../templates
@SimpleNote.Views.IndexItemView = Backbone.View.extend
  tmpl:_.template($("#note-template").html())

  initialize: ->
    _.bindAll(this)
    @listenTo @model, 'change', @render
    @listenTo @model, 'destroy', @onDestroy

  render: ->
    @$el.html @tmpl(@model.toJSON())
    this

  onDelete: ->
    @model.destroy

  onDestroy: ->
    @remove
