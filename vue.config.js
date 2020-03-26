module.exports = {
  chainWebpack: config => {
    config.module
      .rule('elm')
      .test(/\.elm$/)
      .exclude
        .add(/elm-stuff/)
        .add(/node_modules/)
        .end()
      .use('elm-webpack-loader')
        .loader('elm-webpack-loader')
  }
}
