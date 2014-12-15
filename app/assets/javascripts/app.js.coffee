define [
  "router"
  "backbone.marionette"
], (
  Router
  Marionette
) ->

  class App extends Marionette.Application

    router: new Router
