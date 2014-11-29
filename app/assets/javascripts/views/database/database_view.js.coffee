define [
  "backbone.marionette"
  "models/item"
  "collections/items"
  "views/database/database_buttons_view"
  "views/database/database_table_view"
  "hbs!templates/database/database_template"
], (
  Marionette
  ItemModel
  ItemsCollection
  DatabaseButtonsView
  DatabaseTableView
  databaseTemplate
) ->
  
  class DatabaseView extends Marionette.LayoutView
    template: databaseTemplate
    regions:
      tableRegion: "#table-region"
      buttonsRegion: "#buttons-region"

    initialize: ->
      @buttonsView = new DatabaseButtonsView
      @listenTo(@buttonsView, "addNewItem", @addNewItem)

    onShow: -> # N.B. needs to change if this view is rendered more than once
      @buttonsRegion.show(@buttonsView)

      @itemsCollection = new ItemsCollection
      fetchPromise = @itemsCollection.fetch()
      fetchPromise.done =>
        @tableView = new DatabaseTableView(collection: @itemsCollection)
        @tableRegion.show(@tableView)
      fetchPromise.fail -> console.error "itemsCollection fetch failed"

    addNewItem: ->
      @itemsCollection.add(new ItemModel)