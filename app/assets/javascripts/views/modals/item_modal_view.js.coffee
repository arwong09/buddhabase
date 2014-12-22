define [
  "backbone.marionette"
  "backbone.modal"
  "hbs!templates/modals/item_modal_template"
], (
  Marionette
  Modal
  itemModalTemplate
) ->

  class ItemModalView extends Marionette.ItemView
    className: "item-modal"
    template: itemModalTemplate
    events:
      "change .image-input" : "previewImage"
      "submit" : "submit"

    submit: (e) ->
      e.preventDefault()
