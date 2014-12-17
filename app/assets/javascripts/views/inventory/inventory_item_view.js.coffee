define [
  "backbone"
  "backbone.marionette"
  "views/modals/item_modal"
  "hbs!templates/inventory/inventory_item_template"
  "jquery"
  "underscore"
], (
  Backbone
  Marionette
  ItemModal
  InventoryItemTemplate
  $
  _
) ->

  class InventoryItemView extends Marionette.ItemView
    template: InventoryItemTemplate
    className: "inventory-row"
    modelEvents:
      "change": "render"
    events:
      "click .fa-check-square"   : "saveNewItem"
      "click .fa-trash"          : "deleteItem"
      "dblclick .inventory-item-col" : "showItemModal"

    deleteItem: ->
      @model.destroy()

    saveNewItem: ->
      $inputs = @$el.find("input[type=text]")
      attributes = {}
      _.each($inputs, (input) ->
        $input = $(input)
        attributes["#{$input.prop('class')}"] = $input.val()
      )
      @model.save(attributes)

    showItemModal: ->
      app.modalRegion.show(new ItemModal(model: @model))
