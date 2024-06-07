package com.axonivy.connectivity.rest.log.ownLogger;

import org.apache.log4j.Logger;

public class CustomLogger {
    private static final Logger logger = Logger.getLogger("customLogger");

    public static void logInfo(String message) {
        logger.info("this is my custom logger: " + message);
    }

    public static void logWarning(String message) {
        logger.warn("this is my custom logger: " + message);
    }

    public static void logError(String message, Throwable throwable) {
        logger.error("this is my custom logger: " + message, throwable);
    }

    public static void logDebug(String message) {
        logger.debug("this is my custom logger: " + message);
    }
}
