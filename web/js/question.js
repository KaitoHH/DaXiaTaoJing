$(document).ready(function () {
    var questionPostOptions = {
        success: function (data) {
            if (data.msg.length > 1) {
                $("#responseDiv").removeClass("hidden");
                $("#questionResponse").text(data);
            } else {
                $("#successDiv").removeClass("hidden");
                $("#responseDiv").addClass("hidden");
                setTimeout("location.href='/pq/" + data.id + "'", 3000);
            }
        }
    };

    $("#questionForm").ajaxForm(questionPostOptions);

});