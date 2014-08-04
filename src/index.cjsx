Time = require 'react-time'
React = require 'react'

isNumber = (value) ->
  toString.call(value) is '[object Number]'

module.exports = React.createClass
  displayName: 'AutoupdateTime'
  ticket: null

  getDefaultProps: ->
    autoUpdate: true
    interval: 3000

  componentDidMount: ->
    @ticker = setInterval(@invalidate, @props.interval)

   componentWillUnmount: ->
     if @ticker then clearInterval(@ticker)

  render: ->
    @transferPropsTo(
      <Time relative />
    )

  invalidate: ->
    @forceUpdate()
