define [
  "backbone.marionette"
  "views/storefront/storefront_page_view"
  "collections/storefront/storefront_pages"
  "hbs!templates/storefront/storefront_template"
], (
  Marionette
  StorefrontPageView
  PagesCollection
  storefrontTemplate
) ->

  class StorefrontView extends Marionette.CompositeView
    template: storefrontTemplate
    className: "storefront-container"
    childView: StorefrontPageView
    childViewContainer: "#storefront-pages-container"

    initialize: ->
      @collection = new PagesCollection
      @collection.fetch()
