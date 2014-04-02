Spine   = require('spine')
User = require('models/user')
Manager = require('spine/lib/manager')
$       = Spine.$

Main    = require('controllers/users_main')
Sidebar = require('controllers/users_sidebar')

class Users extends Spine.Controller
  className: 'users'
  
  constructor: ->
    super
    
    @sidebar = new Sidebar
    @main    = new Main
    
    @routes
      '/users/:id/edit': (params) -> 
        @sidebar.active(params)
        @main.edit.active(params)
      '/users/:id': (params) ->
        @sidebar.active(params)
        @main.show.active(params)
    
    
    @append @sidebar, @main
    
    User.fetch()
    
module.exports = Users