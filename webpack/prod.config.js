const ExtractTextPlugin = require('extract-text-webpack-plugin')
const webpackMerge = require('webpack-merge')
const webpack = require('webpack')

module.exports = webpackMerge(baseConfig(), {
  plugins: [
    new ExtractTextPlugin({
      filename: '[name].[contenthash].css',
    }),
    new webpack.LoaderOptionsPlugin({
      minimize: true,
      debug: false
    }),
    new webpack.DefinePlugin({
        'process.env': {
            'NODE_ENV': 'production'
        }
    }),
    new webpack.optimize.UglifyJsPlugin({
      beautify: false,
      mangle: {
          screw_ie8: true,
          keep_fnames: true
      },
      compress: {
          screw_ie8: true
      },
      comments: false,
      sourceMap: false,
    }),
  ]
})
