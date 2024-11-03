module.exports = function(api) {
  api.cache(true);
  return {
    presets: ['babel-preset-expo'],
    // Remova a linha abaixo se existia anteriormente
    // plugins: ['expo-router/babel'],
  };
};
