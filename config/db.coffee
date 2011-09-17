mongourl = 'mongodb://'
if env = process.env.VCAP_SERVICES
  	obj = env['mongodb-1.8'][0]['credentials']
	#mongourl = mongourl + obj.username + ':' + obj.password + '@'
	#mongourl = mongourl + obj.hostname + ':' + obj.port + '/'
	#mongourl = mongourl + obj.db
else
	mongourl += 'localhost:27017/test'
	
mongoose = require 'mongoose'
mongoose.connect mongourl
global.M = mongoose


