Spine = require('spine')

class User extends Spine.Model
  @configure 'User', 'firstName', 'lastName', 'email'

  @extend Spine.Model.Local

  @filter: (query) ->
    return @all() unless query
    query = query.toLowerCase()
    @select (item) ->
      item.firstName?.toLowerCase().indexOf(query) isnt -1 or
        item.lastName?.toLowerCase().indexOf(query) isnt -1 or
          item.email?.toLowerCase().indexOf(query) isnt -1

module.exports = User