'use strict';

angular.module('daxiataojingApp')

    .controller('AskProblemsController', ['$scope', 'askProblemsFactory',function($scope,askProblemsFactory) {
        $scope.showALLAsks=false;


        $scope.getDataAskProblem=function () {
            if ($scope.showALLAsks) {
                return askProblemsFactory.getAskProblems();
            }
            else {
                return askProblemsFactory.getFirstAskProblems();
            }
        }

        $scope.toggleShowALLAsks=function () {
            $scope.showALLAsks = !$scope.showALLAsks;
        };

    }])


;