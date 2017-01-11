require.config({
  paths: {
    tgz: './breakdown',
    chart: './chart',
  }
});
require(['tgz', 'chart'], function(tgz, chart, $) {
  console.log($);
  var report = new Report();
  report.onLoad();
})
