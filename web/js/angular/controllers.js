'use strict';

angular.module('daxiataojingApp')
    .controller('AskProblemsController', ['$scope', 'askProblemsFactory',function($scope,askProblemsFactory) {
        $scope.pageSize=2;
        $scope.askProblems=askProblemsFactory.getFirstAskProblem();
        $scope.begin=true;
        $scope.pageId=0;
        $scope.askProblemsPages=askProblemsFactory.getPages($scope.pageSize);
        $scope.askProblemsLength=askProblemsFactory.getLength();
        $scope.canLoadMore= 1 < parseInt($scope.askProblemsLength);
        console.log(1 < parseInt($scope.askProblemsLength));
        
        $scope.loadPage=function() {
            if ($scope.pageId < $scope.askProblemsPages) {
                if ($scope.begin) {
                    $scope.askProblems=askProblemsFactory.getPage($scope.pageSize,$scope.pageId);
                    $scope.begin=false;
                }
                else {
                    $scope.askProblems=$scope.askProblems.concat(askProblemsFactory.getPage($scope.pageSize,$scope.pageId));
                }

                $scope.pageId+=1;
                if ($scope.pageId >= $scope.askProblemsPages) {
                    $scope.canLoadMore=false;
                }
            }


        }

    }])

    .controller('AnswerProblemsController', ['$scope', 'answerProblemsFactory',function($scope,answerProblemsFactory) {
        $scope.pageSize=2;
        $scope.answerProblems=answerProblemsFactory.getFirstAnswerProblem();
        $scope.begin=true;
        $scope.pageId=0;
        $scope.answerProblemsPages=answerProblemsFactory.getPages($scope.pageSize);
        $scope.answerProblemsLength=answerProblemsFactory.getLength();
        $scope.canLoadMore= 1 < parseInt($scope.answerProblemsLength);
        console.log(1 < parseInt($scope.answerProblemsLength));
        
        $scope.loadPage=function() {
            if ($scope.pageId < $scope.answerProblemsPages) {
                if ($scope.begin) {
                    $scope.answerProblems=answerProblemsFactory.getPage($scope.pageSize,$scope.pageId);
                    $scope.begin=false;
                }
                else {
                    $scope.answerProblems=$scope.answerProblems.concat(answerProblemsFactory.getPage($scope.pageSize,$scope.pageId));
                }

                $scope.pageId+=1;
                if ($scope.pageId >= $scope.answerProblemsPages) {
                    $scope.canLoadMore=false;
                }
            }


        }

    }])


     .controller('AgreeProblemsController', ['$scope', 'agreeProblemsFactory',function($scope,agreeProblemsFactory) {
        $scope.pageSize=2;
        $scope.agreeProblems=agreeProblemsFactory.getFirstAgreeProblem();
        $scope.begin=true;
        $scope.pageId=0;
        $scope.agreeProblemsPages=agreeProblemsFactory.getPages($scope.pageSize);
        $scope.agreeProblemsLength=agreeProblemsFactory.getLength();
        $scope.canLoadMore= 1 < parseInt($scope.agreeProblemsLength);
        console.log(1 < parseInt($scope.agreeProblemsLength));
        
        $scope.loadPage=function() {
            if ($scope.pageId < $scope.agreeProblemsPages) {
                if ($scope.begin) {
                    $scope.agreeProblems=agreeProblemsFactory.getPage($scope.pageSize,$scope.pageId);
                    $scope.begin=false;
                }
                else {
                    $scope.agreeProblems=$scope.agreeProblems.concat(agreeProblemsFactory.getPage($scope.pageSize,$scope.pageId));
                }

                $scope.pageId+=1;
                if ($scope.pageId >= $scope.agreeProblemsPages) {
                    $scope.canLoadMore=false;
                }
            }


        }

    }])



;