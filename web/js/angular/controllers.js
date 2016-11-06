'use strict';

angular.module('daxiataojingApp')
    .controller('AskProblemsController', ['$scope', 'askProblemsFactory',function($scope,askProblemsFactory) {
        $scope.pageSize=2;
        $scope.pageId=0;
        $scope.canLoadMore=true;
        $scope.askProblems=[];
        /*$scope.askProblemsLength=0;*/
        /*not consider null of askProblemsFactory*/
        /*$scope.askProblems=askProblemsFactory.getPage($scope.pageSize,0).slice(0,1);*/
        /*$scope.begin=true;*/
        
        
        
        
        // askProblemsFactory.getPage($scope.pageSize,0,function(response){
        //     $scope.askProblems=response;
        // });
        askProblemsFactory.getPage($scope.pageSize,$scope.pageId)
                .then(
                    function(response) {
                        var tmpdata=response.data.data;
                        if(tmpdata.length > 0) {
                            $scope.askProblems=tmpdata;
                            $scope.canLoadMore=true;
                        }
                        else {
                            $scope.canLoadMore=false;
                        }
                        $scope.pageId += 1;
                    }
                    ,
                    function(response) {
                        $scope.message = "Error: "+response.status + " " + response.statusText;
                        console.log($scope.message);
                    }
                    );
        
        
        /*askProblemsFactory.getLength(function(response){
            $scope.askProblemsLength=response;
        });*/

        /*askProblemsFactory.getLength()
        .then(
                function(response) {
                    $scope.askProblemsLength=response.data.length;
                }
                ,
                function(response) {
                    $scope.message = "Error: "+response.status + " " + response.statusText;
                    console.log($scope.message);
                }
            );*/

        /*$scope.askProblemsPages=($scope.askProblemsLength + $scope.pageSize - 1) / $scope.pageSize;
        $scope.canLoadMore= 1 < parseInt($scope.askProblemsLength);*/
        console.log(1 < parseInt($scope.askProblemsLength));
        
        $scope.loadPage=function() {
            if ($scope.canLoadMore) {
                askProblemsFactory.getPage($scope.pageSize,$scope.pageId)
                .then(
                    function(response) {
                        var tmpdata=response.data.data;
                        if(tmpdata.length > 0) {
                            $scope.askProblems=$scope.askProblems.concat(tmpdata);
                            $scope.canLoadMore=true;
                        }
                        else {
                            $scope.canLoadMore=false;
                        }
                        $scope.pageId += 1;
                    }
                    ,
                    function(response) {
                        $scope.message = "Error: "+response.status + " " + response.statusText;
                        console.log($scope.message);
                    }
                    );
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
        };


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