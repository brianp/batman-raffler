class BatmanRaffler.EntriesController extends Batman.Controller
  index: (params) ->
    BatmanRaffler.Entry.load (err) -> throw err if err
    @set 'entries', BatmanRaffler.Entry.get('all')
  show: (params) ->
    
  create: (params) ->
    
  update: (params) ->
    
  destroy: (params) ->
    
