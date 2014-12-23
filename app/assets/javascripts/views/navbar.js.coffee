define [
  "backbone.marionette"
  "hbs!templates/navbar_template"
  "jquery"
  "underscore"
], (
  Marionette
  navbarTemplate
  $
  _
) ->

  class NavbarView extends Marionette.ItemView
    template: navbarTemplate
