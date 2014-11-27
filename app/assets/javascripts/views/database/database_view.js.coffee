define [
  "backbone.marionette"
  "collections/items"
  "views/database/database_table_view"
  "hbs!templates/database/database_template"
], (
  Marionette
  ItemsCollection
  DatabaseTableView
  databaseTemplate
) ->
  
  class DatabaseView extends Marionette.LayoutView
    template: databaseTemplate
    regions:
      tableRegion: "#table-region"

    onShow: -> # N.B. this needs to change if this view is rendered more than once
      @itemsCollection = new ItemsCollection
      fetchPromise = @itemsCollection.fetch()
      fetchPromise.done =>
        @tableRegion.show(new DatabaseTableView(collection: @itemsCollection))
      fetchPromise.fail -> console.error "itemsCollection fetch failed"