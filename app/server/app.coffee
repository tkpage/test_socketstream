# Server-side Code
oasys = SS.require('oasys')

exports.actions =
	init: (callback) ->
		callback 'SS.server.app.init'
		
	getServerIP: (callback) -> 
		oasys.util.getNetworkIP callback
		
		

