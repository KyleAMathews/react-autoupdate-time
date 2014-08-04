Time = require 'react-time'
React = require 'react'

isNumber = (value) ->
  toString.call(value) is '[object Number]'

module.exports = React.createClass
  displayName: 'AutoupdateTime'
  ticket: null

  getDefaultProps: ->
    autoUpdate: false

  componentDidMount: ->
    if @props.autoUpdate
      delay = if isNumber(@props.autoUpdate) then @props.autoUpdate * 1000 else 3000
      @ticker = setInterval(@invalidate, delay)

   componentWillUnmount: ->
     if @ticker then clearInterval(@ticker)

  render: ->
    @transferPropsTo(
      <Time />
    )

  invalidate: ->
    @forceUpdate()
