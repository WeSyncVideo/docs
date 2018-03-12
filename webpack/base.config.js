const path = require('path')
const { root } = require('./utils')

module.exports = {
  module: {
    rules: [{
      test: /\.elm$/,
      exclude: [/elm-stuff/, /node_modules/],
      use: {
        loader: 'elm-webpack-loader',
        options: {
          cwd: path.resolve('..')
        }
      }
    }]
  }
}
