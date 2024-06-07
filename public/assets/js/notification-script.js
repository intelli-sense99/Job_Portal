$(document).ready(function () {

    $('#notification-modal').click(function () {

        $('.modal-notification-body').html('No Notification.......');
        $.ajax({
            type: "GET",
            url: base_url + '/job/notification',
            success: function (data) {
                let response = data;

                if (response.is_success) {
                    console.log(response.notifications);
                    $('.fa-bell-count').hide();
                    $('.modal-notification-body').html(response.html);


                }

            }
        });

    });

    




});