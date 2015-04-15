module.exports = {
    debugInfo: true,
    files: [
        '_site/css/*.css',
        '_site/**/*.html'
    ],
    ghostMode: {
        forms: true,
        links: true,
        scroll: true
    },
    server: {
        baseDir: '_site'
    }
};
