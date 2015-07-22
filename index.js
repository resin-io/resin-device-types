// Generated by CoffeeScript 1.9.3
(function() {
  var _, deviceTypes, findBySlug, predicate;

  _ = require('lodash');

  exports.deviceTypes = deviceTypes = require('./device-types.json');

  predicate = function(slug) {
    return function(deviceType) {
      return deviceType.slug === slug || _.contains(deviceType.aliases, slug);
    };
  };

  exports.findBySlug = findBySlug = function(slug) {
    return _.find(deviceTypes, predicate(slug));
  };

  exports.normalizeDeviceType = function(slug) {
    var ref;
    return (ref = findBySlug(slug)) != null ? ref.slug : void 0;
  };

}).call(this);