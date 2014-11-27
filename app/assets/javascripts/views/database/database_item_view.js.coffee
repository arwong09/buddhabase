define [
  "backbone"
  "backbone.marionette"
  "hbs!templates/database/database_item_template"
], (
  Backbone
  Marionette
  DatabaseItemTemplate
) ->

  class DatabaseItemView extends Marionette.ItemView
    template: DatabaseItemTemplate
    className: "database-row"
    events:
      "click .save-check-mark": "saveNewItem"

    saveNewItem: ->
      