{
  influxdb: {
    version: 0.9,
    host: "influxdb",
    port: 8086,
    database: "statsd",
    username: process.env.INFLUXDB_USER,
    password: process.env.INFLUXDB_PASS,
    flush: {
      enable: true
    },
    proxy: {
      enable: false,
      suffix: 'raw',
      flushInterval: 1000
    }
  },
  port: 8125,
  debug: false,
  flushInterval: 1000,
  backends: ['statsd-influxdb-backend'],
  legacyNamespace: false
}
