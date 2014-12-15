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
      "click .btn-refresh" : "refreshTable"
      "keyup .search-bar" : "searchItems"
      'input .search-bar' : "showRefreshIcon"

    addNewItem: ->
      @trigger("addNewItem")

    refreshTable: ->
      @trigger("refreshTable")

    showRefreshIcon: (e) ->
      $searchBar = $(e.currentTarget)
      val = $searchBar.val()
      if val then $searchBar.addClass('refresh-icon') else $searchBar.removeClass('refresh-icon')

    searchItems: (e) ->
      if e.which == 13
        searchTerm = e.currentTarget.value
        @trigger("searchItems", searchTerm)
