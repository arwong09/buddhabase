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

    previewImage: (e) ->
      file = e.currentTarget.files[0]
      reader = new FileReader()
      reader.onload = (e) =>
        @model.set({image_url: e.target.result})
        @$('.modal-image-preview').attr('src', e.target.result)
      reader.readAsDataURL(file)
