const path = require('path')
const HtmlWebpackPlugin = require('html-webpack-plugin')
const FaviconsWebpackPlugin = require('favicons-webpack-plugin')

const { root } = require('./utils')

module.exports = function () {
  return {
    target: 'web',
    entry: root(path.join('src', 'index.js')),
    output: {
      filename: '[name].[chunkhash].js',
      path: root('dist'),
    },
    resolve: {
      extensions: ['.js', '.elm', '.scss', '.css']
    },
    module: {
      rules: [
        // All output '.js' files will have any sourcemaps re-processed by 'source-map-loader'.
        {
          enforce: 'pre',
          test: /\.js$/,
          loader: 'source-map-loader',
        },
        {
          test: /\.elm$/,
          exclude: [/elm-stuff/, /node_modules/],
          use: {
            loader: 'elm-webpack-loader',
            options: {
              cwd: root()
            },
          },
        },
        {
          test: /\.css$/,
          use: ExtractTextPlugin.extract({
            use: 'css-loader'
          }),
        },
        {
          test: /\.scss$/,
          use: [{
            loader: 'style-loader' // creates style nodes from JS strings
          }, {
            loader: 'css-loader' // translates CSS into CommonJS
          }, {
            loader: 'sass-loader' // compiles Sass to CSS
          }]
        },
        {
          test: /\.woff(\?v=\d+\.\d+\.\d+)?$/,
          use: 'url-loader?limit=10000&mimetype=application/font-woff'
        },
        {
          test: /\.woff2(\?v=\d+\.\d+\.\d+)?$/,
          use: 'url-loader?limit=10000&mimetype=application/font-woff'
        },
        {
          test: /\.ttf(\?v=\d+\.\d+\.\d+)?$/,
          use: 'url-loader?limit=10000&mimetype=application/octet-stream'
        },
        {
          test: /\.eot(\?v=\d+\.\d+\.\d+)?$/,
          use: 'file'
        },
        {
          test: /\.svg(\?v=\d+\.\d+\.\d+)?$/,
          use: 'url-loader?limit=10000&mimetype=image/svg+xml'
        }
      ],
    },
    plugins: [
      new HtmlWebpackPlugin({
        template: root(path.join('src', 'index.html')),
        inject: 'body',
      }),
      new FaviconsWebpackPlugin(root('favicon.ico'))
    ],
  }
}
