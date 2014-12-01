define [
  "backbone"
  "backbone.marionette"
  "views/modals/item_modal"
  "hbs!templates/database/database_item_template"
  "jquery"
  "underscore"
], (
  Backbone
  Marionette
  ItemModal
  DatabaseItemTemplate
  $
  _
) ->

  class DatabaseItemView extends Marionette.ItemView
    template: DatabaseItemTemplate
    className: "database-row"
    modelEvents:
      "change": "render"
    events:
      "click .fa-check-square"   : "saveNewItem"
      "click .fa-trash"          : "deleteItem"
      "dblclick .database-item-col" : "showItemModal"

    deleteItem: ->
      @model.destroy()

    saveNewItem: ->
      $inputs = @$el.find("input[type=text]")
      attributes = {state: "saved"}
      _.each($inputs, (input) ->
        $input = $(input)
        attributes["#{$input.prop('class')}"] = $input.val()
      )
      @model.save(attributes)

    showItemModal: ->
      app.modalRegion.show(new ItemModal)
    