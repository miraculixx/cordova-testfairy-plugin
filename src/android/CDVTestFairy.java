package com.testfairy.cordova;

import org.apache.cordova.*;
import org.json.JSONArray;
import org.json.JSONException;

public class CDVTestFairy extends CordovaPlugin {
	/**
	 * an android this is a NOOP since testfairy does not expose its android API
	 */
    @Override
    public boolean execute(String action, JSONArray data, CallbackContext callbackContext) throws JSONException {
    	String token = data.getString(0);
        String message = "[WARN] testfairy on android must be instrumented via upload for token " + token;
        callbackContext.success(message);
        return true;
    }
}