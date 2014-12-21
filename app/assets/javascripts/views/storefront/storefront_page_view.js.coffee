define [
  "backbone.marionette"
  "models/storefront/storefront_page"
  "hbs!templates/storefront/storefront_page_template"
], (
  Marionette
  Page
  storefrontPageTemplate
) ->

  class StorefrontPageView extends Marionette.ItemView
    template: storefrontPageTemplate
    className: "container"
