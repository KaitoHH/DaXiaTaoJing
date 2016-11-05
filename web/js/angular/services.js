'use strict';

angular.module('daxiataojingApp')
    .factory('askProblemsFactory', function(){
        var askProblemsAskFac={};
        var askProblems=[
            {
                id:"0",
                looktimes:"123",
                title:"二数余一,五数余二,七数余三,九数余四,问该数几何?五数余二,七数余三,九数余四,问该数几何五数余二,七数余三,九数余四,问该数几何五数余二,七数余三,九数余四,问该数几何五数余二,七数余三,九数余四,问该数几何五数余二,七数余三,九数余四,问该数几何",
                subject:"离散数学",
                numberOfAnswers:"4",
                numberOfFollowers:"8"
            },
            {
                id:"1",
                looktimes:"112",
                title:"一锅一等于你拟?",
                subject:"离散数学",
                numberOfAnswers:"2",
                numberOfFollowers:"2"
            },
            {
                id:"2",
                looktimes:"13",
                title:"悦秋和敌酋那歌大?",
                subject:"地理",
                numberOfAnswers:"100",
                numberOfFollowers:"8"
            },
            {
                id:"3",
                looktimes:"434",
                title:"三锅三等于你拟?",
                subject:"离散数学",
                numberOfAnswers:"6",
                numberOfFollowers:"6"
            },
            {
                id:"4",
                looktimes:"123",
                title:"四锅三等于你拟?",
                subject:"离散数学",
                numberOfAnswers:"7",
                numberOfFollowers:"7"
            }
        ];
        askProblemsAskFac.getFirstAskProblem=function() {
            if (askProblems.length <= 0) {
                return null;
            }
            return askProblems.slice(0,1);
        }
        askProblemsAskFac.getPage=function(pageSize,pageId) {
            var firstId = parseInt(pageSize) * parseInt(pageId);
            var lastId = Math.min(firstId + parseInt(pageSize),askProblems.length);
            return askProblems.slice(firstId,lastId);
        }
        askProblemsAskFac.getLength=function() {
            return askProblems.length;
        }
        askProblemsAskFac.getPages=function(pageSize) {
            return (askProblems.length + pageSize - 1) / pageSize;
        }

       
        return askProblemsAskFac;
    })

    .factory('answerProblemsFactory', function(){
        var answerProblemsFac={};
        var answerProblems=[
            {
                id:"0",
                looktimes:"387",
                title:"有10道选择型测验题,要求从每题的5种答案中选出一种正确的答案,如果一人随意猜答,他答对不少于6道题的概率",
                subject:"概率论",
                numberOfAnswers:"56",
                numberOfFollowers:"20"
            },
            {
                id:"1",
                looktimes:"112",
                title:"一锅一等于你拟?",
                subject:"离散数学",
                numberOfAnswers:"2",
                numberOfFollowers:"2"
            },
            {
                id:"2",
                looktimes:"13",
                title:"悦秋和敌酋那歌大?",
                subject:"地理",
                numberOfAnswers:"100",
                numberOfFollowers:"8"
            },
            {
                id:"3",
                looktimes:"434",
                title:"三锅三等于你拟?",
                subject:"离散数学",
                numberOfAnswers:"6",
                numberOfFollowers:"6"
            },
            {
                id:"4",
                looktimes:"123",
                title:"四锅三等于你拟?",
                subject:"离散数学",
                numberOfAnswers:"7",
                numberOfFollowers:"7"
            }
        ];

        answerProblemsFac.getFirstAnswerProblem=function() {
            if (answerProblems.length <= 0) {
                return null;
            }
            return answerProblems.slice(0,1);
        }
        answerProblemsFac.getPage=function(pageSize,pageId) {
            var firstId = parseInt(pageSize) * parseInt(pageId);
            var lastId = Math.min(firstId + parseInt(pageSize),answerProblems.length);
            return answerProblems.slice(firstId,lastId);
        }
        answerProblemsFac.getLength=function() {
            return answerProblems.length;
        }
        answerProblemsFac.getPages=function(pageSize) {
            return (answerProblems.length + pageSize - 1) / pageSize;
        }

        return answerProblemsFac;
    })

    .factory('agreeProblemsFactory', function(){
        var agreeProblemsFac={};
        var agreeProblems=[
            {
                id:"0",
                looktimes:"890",
                title:"使用二分搜索在200项的表中进行查找时所需查找的最大项是多少?如果是100 000项的表又会如何呢？",
                subject:"计算机科学概论",
                numberOfAnswers:"100",
                numberOfFollowers:"56"
            },
            {
                id:"1",
                looktimes:"112",
                title:"一锅一等于你拟?",
                subject:"离散数学",
                numberOfAnswers:"2",
                numberOfFollowers:"2"
            },
            {
                id:"2",
                looktimes:"13",
                title:"悦秋和敌酋那歌大?",
                subject:"地理",
                numberOfAnswers:"100",
                numberOfFollowers:"8"
            },
            {
                id:"3",
                looktimes:"434",
                title:"三锅三等于你拟?",
                subject:"离散数学",
                numberOfAnswers:"6",
                numberOfFollowers:"6"
            },
            {
                id:"4",
                looktimes:"123",
                title:"四锅三等于你拟?",
                subject:"离散数学",
                numberOfAnswers:"7",
                numberOfFollowers:"7"
            }
        ];

        agreeProblemsFac.getFirstAgreeProblem=function() {
            if (agreeProblems.length <= 0) {
                return null;
            }
            return agreeProblems.slice(0,1);
        }
        agreeProblemsFac.getPage=function(pageSize,pageId) {
            var firstId = parseInt(pageSize) * parseInt(pageId);
            var lastId = Math.min(firstId + parseInt(pageSize),agreeProblems.length);
            return agreeProblems.slice(firstId,lastId);
        }
        agreeProblemsFac.getLength=function() {
            return agreeProblems.length;
        }
        agreeProblemsFac.getPages=function(pageSize) {
            return (agreeProblems.length + pageSize - 1) / pageSize;
        }

        return agreeProblemsFac;
    })
    ;











