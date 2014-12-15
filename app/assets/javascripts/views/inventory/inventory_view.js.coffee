define [
  "backbone.marionette"
  "models/item"
  "collections/items"
  "models/table"
  "views/inventory/inventory_buttons_view"
  "views/inventory/inventory_table_view"
  "hbs!templates/inventory/inventory_template"
], (
  Marionette
  ItemModel
  ItemsCollection
  TableModel
  InventoryButtonsView
  InventoryTableView
  inventoryTemplate
) ->

  class InventoryView extends Marionette.LayoutView
    template: inventoryTemplate
    className: "inventory-container"
    regions:
      tableRegion: "#table-region"
      buttonsRegion: "#buttons-region"

    initialize: ->
      @buttonsView = new InventoryButtonsView
      @listenTo(@buttonsView, "addNewItem", @addNewItem)
      @listenTo(@buttonsView, "searchItems", @searchItems)

    onShow: -> # N.B. needs to change if this view is rendered more than once
      @buttonsRegion.show(@buttonsView)

      @itemsCollection = new ItemsCollection
      @tableModel = new TableModel
      @itemsCollection.fetch()
      @tableView = new InventoryTableView(collection: @itemsCollection, model: @tableModel)
      @tableRegion.show(@tableView)

    addNewItem: ->
      @itemsCollection.add(new ItemModel)

    searchItems: (searchTerm) ->
      filteredCollection = @itemsCollection.clone()
      filteredCollection.filterBySearch(searchTerm)
      @tableView.collection = filteredCollection
      @tableView.render()
