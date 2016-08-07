var todoApp = angular.module('todo', ['ui.router']);
todoApp.config(function($stateProvider, $urlRouterProvider) {
  // For any unmatched url, redirect to /state1
  $urlRouterProvider.otherwise("/create");
  $stateProvider
    .state('create', {
      url: "/create",
      templateUrl: "app/partials/create.html",
      controller: 'CreateCtrl'
    })
    .state('list', {
      url: "/list",
      templateUrl: "app/partials/list.html"
    });
});
