Time = require 'react-time-temp-fork'
React = require 'react'

isNumber = (value) ->
  toString.call(value) is '[object Number]'

module.exports = React.createClass
  displayName: 'AutoupdateTime'

  getDefaultProps: ->
    autoUpdate: true
    interval: 3000

  componentDidMount: ->
    @ticker = setInterval(@invalidate, @props.interval)

   componentWillUnmount: ->
     if @ticker then clearInterval(@ticker)

  render: ->
    <Time relative {...@props} />

  invalidate: ->
    @forceUpdate()
