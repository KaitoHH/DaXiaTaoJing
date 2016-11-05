$(document).ready(function () {
    var settingPostOptions = {
        success: function (data) {
            if (data.length > 1) {
                alert('failed');
            } else {
                location.reload();
            }
        }
    };

    $("#settingForm").ajaxForm(settingPostOptions);

});