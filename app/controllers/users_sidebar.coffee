Spine = require('spine')
User  = require('models/user')
$     = Spine.$

class Sidebar extends Spine.Controller
  className: 'sidebar'

  elements:
    '.items': 'items'
    'input': 'search'

  events:
    'keyup input': 'filter'
    'click footer button': 'create'   

  constructor: ->
    super
    @html require('views/sidebar')()

    @list = new Spine.List
      el: @items,
      template: require('views/item'),
      selectFirst: true

    @list.bind 'change', @change
    
    @active (params) ->
      @list.change(User.find(params.id))

    User.bind('refresh change', @render)

  filter: ->
    @query = @search.val()
    @render()

  render: =>
    users = User.filter(@query)
    @list.render(users)

  change: (item) =>
    @navigate '/users', item.id

  create: ->
    item = User.create()
    @navigate('/users', item.id, 'edit')  
  
module.exports = Sidebar