define (require)->
	React = require 'react'
	require 'react.backbone'

	Post = require 'jsx!components/Post'

	React.createBackboneClass
		render: ->
			posts = @collection().map (post)->
				`<Post model={post} />`
			`<div id='posts'>
				{posts}
			</div>`