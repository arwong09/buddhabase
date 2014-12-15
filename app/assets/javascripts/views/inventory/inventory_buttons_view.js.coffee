define [
  "backbone"
  "backbone.marionette"
  "hbs!templates/inventory/inventory_buttons_template"
], (
  Backbone
  Marionette
  InventoryButtonsTemplate
) ->

  class InventoryButtonsView extends Marionette.ItemView
    template: InventoryButtonsTemplate
    events:
      "click .btn-add" : "addNewItem"
      "keyup .search-bar" : "searchItems"

    addNewItem: ->
      @trigger("addNewItem")

    searchItems: (e) ->
      if e.which == 13
        searchTerm = e.currentTarget.value
        @trigger("searchItems", searchTerm)
