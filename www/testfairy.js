TestFairy = function() { };

TestFairy.prototype.init = function(token, callback) {
	console.log('loading testfairy with token ' + token);
	cordova.exec(callback, function(err) {
		callback(err);
	}, "TestFairy", "init", [ token ]);
}

TestFairy.prototype.setCorrelationId = function(corrId, callback) {
	console.log('setting testfairy correlation id ' + corrId);
	cordova.exec(callback, function(err) {
		callback(err);
	}, "TestFairy", "setCorrelationId", [ corrId ]);
}



module.exports = new TestFairy();