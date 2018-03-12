function webpackConfig(env) {
  return require(`./webpack/${env}.config.js`)()
}

module.exports = webpackConfig
