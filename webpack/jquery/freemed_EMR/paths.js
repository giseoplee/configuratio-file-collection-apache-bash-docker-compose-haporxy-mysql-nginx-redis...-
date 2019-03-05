'use strict';
const path = require('path');
const fs = require('fs');

const appDirectory = fs.realpathSync(process.cwd());
const resolveApp = relativePath => path.resolve(appDirectory, relativePath);

module.exports = {
    appBuild: resolveApp('public/dist/'),
    appPublic: resolveApp('public'),
    appIndex: resolveApp('src_view/index.js'),
    appPackageJson: resolveApp('package.json'),
    appSrc: resolveApp('src_view'),
    appNodeModules: resolveApp('node_modules'),
};