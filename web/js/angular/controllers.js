'use strict';

angular.module('daxiataojingApp')
    .controller('AskProblemsController', ['$scope', 'askProblemsFactory',function($scope,askProblemsFactory) {
        $scope.showALLAsks=false;
        $scope.showNums=2;
        $scope.askProblems=askProblemsFactory.getFirstAskProblem();
        $scope.begin=true;
        $scope.pageId=0;
        $scope.askProblemsPages=askProblemsFactory.getPages(2);
        $scope.askProblemsLength=askProblemsFactory.getLength();
        $scope.canLoadMore= 1 < parseInt($scope.askProblemsLength);
        console.log(1 < parseInt($scope.askProblemsLength));
        /*$scope.getDataAskProblem=function () {
         if ($scope.showALLAsks) {
         return askProblemsFactory.getAskProblems();
         }
         else {
         return askProblemsFactory.getFirstAskProblems();
         }
         }*/
        $scope.loadPage=function() {
            if ($scope.pageId < $scope.askProblemsPages) {
                if ($scope.begin) {
                    $scope.askProblems=askProblemsFactory.getPage(2,$scope.pageId);
                    $scope.begin=false;
                }
                else {
                    $scope.askProblems=$scope.askProblems.concat(askProblemsFactory.getPage(2,$scope.pageId));
                }

                $scope.pageId+=1;
                if ($scope.pageId >= $scope.askProblemsPages) {
                    $scope.canLoadMore=false;
                }
            }



        }

        /*$scope.toggleShowALLAsks=function () {
         $scope.showALLAsks = !$scope.showALLAsks;
         };*/

    }])


;