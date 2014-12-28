#= require_tree ../templates
@SimpleNote.Views.IndexItemView = Backbone.View.extend
  tagName: 'li'
  tmpl:_.template($("#note-template").html())

  initialize: ->
    _.bindAll(this)
    @listenTo @model, 'change', @render
    @listenTo @model, 'destroy', @onDestroy
    @render()

  render: ->
    console.log("indexItemView is rendered")
    @$el.html @tmpl(@model.toJSON())
    this

  onDelete: ->
    @model.destroy

  onDestroy: ->
    @remove
