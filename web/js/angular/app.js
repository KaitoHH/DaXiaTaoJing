'use strict';
angular.module('daxiataojingApp',[])
    .controller('AskProblemsController',['$scope',function ($scope) {
        $scope.showALLAsks=false;
        
        var askProblems=[
            {
                looktimes:"123",
                title:"二数余一,五数余二,七数余三,九数余四,问该数几何?",
                subject:"离散数学",
                numberOfAnswers:"4",
                numberOfFollowers:"8"
            },
            {
                looktimes:"112",
                title:"一锅一等于你拟?",
                subject:"离散数学",
                numberOfAnswers:"2",
                numberOfFollowers:"2"
            },
            {
                looktimes:"13",
                title:"悦秋和敌酋那歌大?",
                subject:"地理",
                numberOfAnswers:"100",
                numberOfFollowers:"8"
            },
            {
                looktimes:"434",
                title:"三锅三等于你拟?",
                subject:"离散数学",
                numberOfAnswers:"6",
                numberOfFollowers:"6"
            },
            {
                looktimes:"123",
                title:"四锅三等于你拟?",
                subject:"离散数学",
                numberOfAnswers:"7",
                numberOfFollowers:"7"
            }
        ];
        var tmp2 = askProblems.slice(0,1);
        $scope.askProblems=askProblems;
        $scope.tmpdata=[];
        $scope.tmpdata=tmp2;


        $scope.toggleShowALLAsks=function () {
            $scope.showALLAsks = !$scope.showALLAsks;
        };
        
        $scope.getDataAskProblem=function () {
            if ($scope.showALLAsks) {
                return askProblems;
            }
            else {
                return askProblems.slice(0,1);
            }
        }
    }]);
;






