Time = require 'react-time'
React = require 'react'

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
