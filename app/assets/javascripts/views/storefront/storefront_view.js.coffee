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

  class StorefrontView extends Marionette.LayoutView
    template: databaseTemplate
    className: "database-container"
    regions:
      tableRegion: "#table-region"
      buttonsRegion: "#buttons-region"
