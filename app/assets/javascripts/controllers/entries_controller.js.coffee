class BatmanRaffler.EntriesController extends Batman.Controller
  index: (params) ->
    BatmanRaffler.Entry.load (err) -> throw err if err
    @set 'entries', BatmanRaffler.Entry.get('all')
    @set 'entry', new BatmanRaffler.Entry()

  show: (params) ->

  create: (params) ->
    @get('entry').save (err) =>
      $('#new_entry').attr('disabled', false)

      if err
        throw err unless err instanceof Batman.ErrorsSet
      else
        BatmanRaffler.flashSuccess "Ad #{@get('entry.name')} created successfully!"
        @set 'entry', new BatmanRaffler.Entry()

  update: (params) ->

  destroy: (params) ->
