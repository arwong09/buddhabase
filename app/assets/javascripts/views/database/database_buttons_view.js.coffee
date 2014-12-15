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
      "input .search-bar" : "showRefreshIcon"
      'click .search-bar-close' : "refreshTable"

    addNewItem: ->
      @trigger("addNewItem")

    refreshTable: (e) ->
      $refreshIcon = $(e.currentTarget)
      $searchBar = $refreshIcon.prev()

      $searchBar.val('')
      $refreshIcon.hide()

      @trigger("refreshTable")

    showRefreshIcon: (e) ->
      $searchBar = $(e.currentTarget)
      $refreshIcon = $searchBar.next()
      val = $searchBar.val()
      if val then $refreshIcon.show() else $refreshIcon.hide()

    searchItems: (e) ->
      if e.which == 13
        searchTerm = e.currentTarget.value
        @trigger("searchItems", searchTerm)
