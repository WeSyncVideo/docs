const webpackMerge = require('webpack-merge');

const baseConfig = require('./base.config')
const { root } = require('./utils')

module.exports = function () {
  return webpackMerge(baseConfig(), {
    devtool: 'source-map',
    mode: 'development',
    devServer: {
      contentBase: root('dist'),
      port: 9090,
      overlay: true
    },
  })
}
