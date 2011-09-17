module.exports = 
	getNetworkIP: (cb) ->
		socket = require('net').createConnection 80, 'www.google.com'
		socket.on 'connect', ->
			cb socket.address().address
			socket.end
		socket.on 'error', -> cb undefined 

	getRandom: -> Math.random


