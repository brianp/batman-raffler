window.BatmanRaffler = class BatmanRaffler extends Batman.App

  Batman.View::prefix = 'assets/views'

  @resources 'entries'
  @root 'entries#index'
  # @route '/controller/:id', 'controller#show', resource: 'model', action: 'show'

  @on 'run', ->
    console?.log "Running ...."

  @on 'ready', ->
    console?.log "BatmanRaffler ready for use."

  @flash: Batman()
  @flash.accessor
    get: (key) -> @[key]
    set: (key, value) ->
      @[key] = value
      if value isnt ''
        setTimeout =>
          @set(key, '')
        , 2000
      value

  @flashSuccess: (message) -> @set 'flash.success', message
  @flashError: (message) ->  @set 'flash.error', message
