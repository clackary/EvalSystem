require.config({
	paths: {
		tgz: './pinGraph',
		knockout: '../lib/knockout/knockout-3.3.0',
    stable_sort: './stable',
		jquery: 'jquery'
	}
});

require(['tgz', 'knockout', 'stable_sort', 'jquery'], function(tgz, ko, stable_sort, $) {

  console.log($);
	var vm = new ViewModel(ko);
	vm.startGraph();
	ko.applyBindings(vm);
});
