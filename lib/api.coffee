rest        = require('rest')
path_prefix = require('rest/interceptor/pathPrefix')
error_code  = require('rest/interceptor/errorCode')
mime        = require('rest/interceptor/mime')
params      = require('rest/interceptor/params')

module.exports = rest.wrap(mime, mime: 'application/json')
  .wrap(error_code)
  .wrap(params)
  .wrap(path_prefix, prefix: 'https://public-api.wordpress.com/rest/v1.1/sites/')
