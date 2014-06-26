define (require)->
	React = require 'react'
	require 'react.backbone'

	React.createBackboneClass
		render: ->
			title = @model().get('title')
			url = @model().get('url')

			`<div className='post'>
				<h1><a href={url}>{title}</a></h1>
			 </div>
			`
