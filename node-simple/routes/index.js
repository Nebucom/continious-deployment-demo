
/*
 * GET home page.
 */
var package = require('../package.json');

exports.index = function(req, res) {
  res.render('index', { title: 'Express', node: process.env.NODE_ENV, version: package.version });
};