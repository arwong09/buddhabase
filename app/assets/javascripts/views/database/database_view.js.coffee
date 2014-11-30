define [
  "backbone.marionette"
  "models/item"
  "collections/items"
  "models/table"
  "views/database/database_buttons_view"
  "views/database/database_table_view"
  "hbs!templates/database/database_template"
], (
  Marionette
  ItemModel
  ItemsCollection
  TableModel
  DatabaseButtonsView
  DatabaseTableView
  databaseTemplate
) ->
  
  class DatabaseView extends Marionette.LayoutView
    template: databaseTemplate
    className: "database-container"
    regions:
      tableRegion: "#table-region"
      buttonsRegion: "#buttons-region"

    initialize: ->
      @buttonsView = new DatabaseButtonsView
      @listenTo(@buttonsView, "addNewItem", @addNewItem)

    onShow: -> # N.B. needs to change if this view is rendered more than once
      @buttonsRegion.show(@buttonsView)

      @itemsCollection = new ItemsCollection
      @tableModel = new TableModel
      @itemsCollection.fetch()
      @tableView = new DatabaseTableView(collection: @itemsCollection, model: @tableModel)
      @tableRegion.show(@tableView)

    addNewItem: ->
      @itemsCollection.add(new ItemModel)
      