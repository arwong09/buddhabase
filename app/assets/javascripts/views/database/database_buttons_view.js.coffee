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
      "keyup .search-bar" : "searchItems"

    addNewItem: ->
      @trigger("addNewItem")

    searchItems: (e) ->
      if e.which == 13
        searchTerm = e.currentTarget.value
        @trigger("searchItems", searchTerm)
