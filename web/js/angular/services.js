'use strict';

angular.module('daxiataojingApp')
    .factory('askProblemsFactory', function(){
        var askProblemsAskFac={};
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
        askProblemsAskFac.getAskProblems = function(){
            return askProblems;
        };
        askProblemsAskFac.getFirstAskProblems = function(index){
            if (index >= askProblems.length) {
                return null;
            }
            return askProblems.slice(0,1);
        };
        return askProblemsAskFac;
    });



