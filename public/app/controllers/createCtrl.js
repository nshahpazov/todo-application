'use strict';
angular.module('todo')
  .controller('CreateCtrl', function ($scope) {
    $scope.firstName = 'Nikola';
    console.log('hello from CreateCtrl');
    console.log('Hello from the other side');
  });