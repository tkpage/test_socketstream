# Client-side Code

print = (msg) -> $('#status').append msg + '<br>'


# Bind to socket events
SS.socket.on 'disconnect', ->  
	print 'SS.socket.event disconnect'
	
SS.socket.on 'reconnect', ->   
	print 'SS.socket.event reconnect'



# automatically when the websocket connection is established.
exports.init = ->
	print 'SS.client.app.init'
	SS.server.app.init (res) -> print res
	SS.server.app.getServerIP (res) -> print res


