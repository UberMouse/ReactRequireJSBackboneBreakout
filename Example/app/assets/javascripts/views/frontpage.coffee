define (require)->
	Backbone = require 'backbone'
	React = require 'react'

	PostsCollection = require 'collections/Posts'
	Posts = require 'jsx!components/Posts'

	Backbone.View.extend
		initialize: ->
			PostsCollection.fetch()
			React.renderComponent(new Posts(collection: PostsCollection), document.body)