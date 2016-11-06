$(document).ready(function () {
    var questionPostOptions = {
        success: function (data) {
            if (data.msg.length > 1) {
                $("#responseDiv").removeClass("hidden");
                $("#questionResponse").text(data.msg);
            } else {
                $("#successDiv").removeClass("hidden");
                $("#responseDiv").addClass("hidden");
                setTimeout("location.href='/rq/" + data.id + "'", 3000);
            }
        }
    };

    $("#questionForm").ajaxForm(questionPostOptions);

});