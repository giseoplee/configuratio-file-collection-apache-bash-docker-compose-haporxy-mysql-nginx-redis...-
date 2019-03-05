const ExtractTextPlugin = require('extract-text-webpack-plugin');

const webpackLoader = options => {
    const { prod } = options;

    return [
        {
            test: /\.js$/,
            loaders: ['babel-loader?' + JSON.stringify(
                {
                    cacheDirectory: true,
                    presets: ['es2015']
                })],
            exclude: /node_modules/

        },
        {
            test: /\.scss|css$/,
            use: ExtractTextPlugin.extract({
                use: ['css-loader', 'sass-loader']
            })
        },
        {
            test: /\.(eot|png|jpg)$/,
            loader: 'url-loader?limit=30000&name=[name]-[hash].[ext]'
        },
        {
            test: /\.(woff|woff2|ttf|svg)$/,
            loader: 'url-loader?limit=8192&name=[name]-[hash].[ext]',
            options: {
                prefix: 'etc'
            }
        },
        {
            test: /\.(ttf)$/,
            loader: 'file-loader'
        },
        {
            test: /\.jpe?g$|\.gif$|\.png$/i,
            loader: 'file-loader'
        },
        {
            test: /\.jpg/,
            loader: 'file'
        }
    ]
}

module.exports = webpackLoader;