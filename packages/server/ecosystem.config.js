module.exports = {
  apps: [{
    script: "src/server.ts",
    watch: ["src"],
    // Delay between restart
    watch_delay: 1000,
    ignore_watch : ["node_modules"],
    watch_options: {
      "followSymlinks": false,
      "usePolling": true
    }
  }]
}
