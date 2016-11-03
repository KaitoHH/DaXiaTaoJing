$(document).ready(function () {
    var questionPostOptions = {
        success: function (data) {
            if (data.length > 1) {
                $("#responseDiv").removeClass("hidden");
                $("#questionResponse").text(data);
            } else {
                $("#successDiv").removeClass("hidden");
                $("#responseDiv").addClass("hidden");
            }
        }
    };

    $("#questionForm").ajaxForm(questionPostOptions);

});