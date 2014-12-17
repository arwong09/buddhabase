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
      "input .search-bar" : "toggleRefreshIcon"
      "click .search-bar-close" : "refreshInventoryTable"

    ui:
      $searchBar: '.search-bar'
      $refreshIcon: '.search-bar-close'

    addNewItem: ->
      @trigger("addNewItem")

    refreshInventoryTable: (e) ->
      @ui.$searchBar.val("")
      @ui.$refreshIcon.hide()

      @trigger("refreshInventoryTable")

    toggleRefreshIcon: (e) ->
      if @ui.$searchBar.val() then @ui.$refreshIcon.show() else @ui.$refreshIcon.hide()

    searchItems: (e) ->
      if $(e.currentTarget).val() != "" || e.which == 13
        searchTerm = e.currentTarget.value
        @trigger("searchItems", searchTerm)
