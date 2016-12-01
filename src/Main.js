"use strict";

var PDFJS = require('pdfjs-dist').PDFJS;

exports.head = function(arr) {
    return arr[0];
};

exports.isUndefined = function(value) {
    return value === undefined;
};

exports.isPDFJSLoaded = function() {
    return PDFJS !== undefined;
};


