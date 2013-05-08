@Demo = do (Backbone, Marionette) ->
  
  App = new Marionette.Application

  App.addRegions
    mainRegion: "#main-region"

  App.addInitializer ->
    App.module("DemoApp").start()

  App.on "initialize:after", ->
    if Backbone.history
      Backbone.history.start()

  App.navigate = (route) ->
    Backbone.history.navigate route, {trigger: true}

  App.currentRoute = ->
    Backbone.history.fragment

  App


