define [
  "backbone"
  "backbone.marionette"
  "hbs!templates/database/database_buttons_template"
], (
  Backbone
  Marionette
  DatabaseButtonsTemplate
) ->

  class DatabaseButtonsView extends Marionette.ItemView
    template: DatabaseButtonsTemplate
    events:
      "click .btn-add" : "addNewItem"

    addNewItem: ->
      @trigger("addNewItem")
