const webpackMerge = require('webpack-merge')
const webpack = require('webpack')

const baseConfig = require('./base.config')

module.exports = function () {
  return webpackMerge(baseConfig(), {
    devtool: 'none',
    mode: 'production',
    plugins: [
      new webpack.DefinePlugin({
          'process.env': {
              'NODE_ENV': 'production'
          }
      }),
    ]
  })
}
