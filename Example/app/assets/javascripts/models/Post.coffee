define (require)->
	Backbone = require 'backbone'

	Backbone.Model.extend
		defaults:
			title: ''
			url: ''