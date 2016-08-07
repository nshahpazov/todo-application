'use strict';
angular.module('todo')
  .controller('CreateCtrl', function ($scope) {
    $scope.firstName = 'Nikola';
    console.log('hello from CreateCtrl');
  });