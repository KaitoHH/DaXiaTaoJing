$(document).ready(function () {
    var answerPostOptions = {
        success: function (data) {
            if (data.length > 1) {
                alert('答案不能为空');
            } else {
                location.reload();
            }
        }
    };

    $("#answerForm").ajaxForm(answerPostOptions);

});