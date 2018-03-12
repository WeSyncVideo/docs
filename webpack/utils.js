const path = require('path')

exports.root = function root (fileOrDir) {
  const rootPath = path.resolve(__dirname, '..')

  return (fileOrDir)
    ? path.join(rootPath, fileOrDir)
    : rootPath
}
