Spine   = require('spine')
User = require('models/user')
$       = Spine.$

class Show extends Spine.Controller
  className: 'show'
  
  events:
    'click .edit': 'edit'
  
  constructor: ->
    super
    @active @change
  
  render: ->
    @html require('views/show')(@item)
    
  change: (params) =>
    @item = User.find(params.id)
    @render()
    
  edit: ->
    @navigate('/users', @item.id, 'edit')

class Edit extends Spine.Controller
  className: 'edit'
  
  events:
    'submit form': 'submit'
    'click .save': 'submit'
    'click .delete': 'delete'
    
  elements: 
    'form': 'form'
    
  constructor: ->
    super
    @active @change
  
  render: ->
    @html require('views/form')(@item)
    
  change: (params) =>
    @item = User.find(params.id)
    @render()
    
  submit: (e) ->
    e.preventDefault()
    @item.fromForm(@form).save()
    @navigate('/users', @item.id)
    
  delete: ->
    @item.destroy() if confirm('Are you sure?')
    
class Main extends Spine.Stack
  className: 'main stack'
    
  controllers:
    show: Show
    edit: Edit
    
module.exports = Main