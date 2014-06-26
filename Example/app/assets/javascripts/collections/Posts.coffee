define (require)->
	do ->
		Backbone = require 'backbone'
		Post = require 'models/Post'

		Collection = Backbone.Collection.extend
			model: Post
			url: '/posts'
		new Collection
