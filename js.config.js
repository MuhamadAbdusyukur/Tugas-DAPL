// jest.config.js
module.exports = {
    // ... konfigurasi lainnya
    transformIgnorePatterns: [
        "/node_modules/(?!@nestjs/common/)"
    ],
};