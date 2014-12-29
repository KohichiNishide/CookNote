@SimpleNote.Views.IndexItemView = Backbone.View.extend
  tagName: 'li'
  tmpl: JST['notes/index_item']

  initialize: ->
    _.bindAll(this)
    @listenTo @model, 'change', @render
    @listenTo @model, 'destroy', @onDestroy

  render: ->
    console.log("indexItemView is rendered")
    @$el.html @tmpl(@model.toJSON())
    this

  onDelete: ->
    @model.destroy

  onDestroy: ->
    @remove
