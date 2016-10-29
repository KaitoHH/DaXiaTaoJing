$(document).ready(function () {
    var options = {
        success: function (data) {
            if (data.length > 1) {
                $("#responseAlert").removeClass("hidden");
                $("#responseAlert").text(data);
            } else {
                location.reload();
            }
        }
    };

    $("#loginForm").ajaxForm(options);
    $('#loginModal').on('hidden.bs.modal', function (e) {
        $("#responseAlert").addClass("hidden");
        $("#stuId").val('');
        $("#stuPwd").val('');
    })

    // 导航栏状态的判断
    $.ajax({
        type: "GET",
        url: "/loginStatus.do",
        dataType: "json",
        success: function (data) {
            if (data.msg == "ok") {
                $('#welcome-menu').html("欢迎你, " + data.name + $('#welcome-menu').html());
                $('#dropdown-menu').removeClass("hidden");
            } else {
                $('#login-menu').removeClass("hidden");
            }
        }
    });
});