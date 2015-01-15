require 'routes/route'

TravisRoute = Travis.Route

Route = TravisRoute.extend
  activate: ->
    @get('stylesheetsManager').disable('main')
    @get('stylesheetsManager').enable('dashboard')

  deactivate: ->
    @get('stylesheetsManager').enable('main')
    @get('stylesheetsManager').disable('dashboard')

Travis.DashboardRoute = Route
