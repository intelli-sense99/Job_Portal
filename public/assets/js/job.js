$(document).ready(function () {


    let experience_id = $('.filter_exp:checked').val();
    let skill_id = $('.filter_skill:checked').val();
    let salary_id = $('.filter_salary:checked').val();



    $('.filter_exp').click(function () {

        experience_id = $(this).val();
        reloadJobPage();

    });
    $('.filter_skill').click(function () {

        skill_id = $(this).val();

        reloadJobPage();

    });
    $('.filter_salary').click(function () {
        salary_id = $(this).val();

        reloadJobPage();

    });


    function reloadJobPage() {

        let params_str = '';

        if (skill_id) {

            if (params_str == '') {

                params_str = '?skill_id=' + skill_id;

            } else {
                params_str += '&skill_id=' + skill_id;

            }
        }

        if (experience_id) {

            if (params_str == '') {

                params_str = '?experience_id=' + experience_id;

            } else {
                params_str += '&experience_id=' + experience_id;

            }
        }

        if (salary_id) {

            if (params_str == '') {

                params_str = '?salary_id=' + salary_id;

            } else {
                params_str += '&salary_id=' + salary_id;

            }
        }

        let new_url = base_url + '/jobs/search/' + params_str;
        window.location.href = new_url;

        return false;


    }




    // job modal btn
    $('.modal_job').click(function () {

        let job_id = $(this).data('id');
        let job_title = $(this).data('job-title')

        // alert(job_title);

        $('.modal_job_id').val(job_id);
        $('.modal_Job_title').html(job_title);
    });

    // Apply Job


    $('#job-form').submit(function (e) {
        e.preventDefault();

        let job_id = $('.modal_job_id').val();



        // var formData = new FormData($(this)[0]);

        $.ajax({
            type: "POST",
            url: base_url + '/job/apply',
            data: $(this).serialize(),

            success: function (data) {
                let response = data;
                // console.log(data);

                if (response.is_success) {

                    console.log(response.msg);
                    jQuery('#exampleModal').modal('hide');
                    $('.msg').removeClass('hide_error');
                    $('.msg').html(response.msg);
                    $('.msg').fadeOut(6000);
                    $('#job-form').trigger('reset');
                    $('.wcp-apply-' + job_id).html('Applied');
                    $('.wcp-apply-' + job_id).attr("disabled", true);

                } else {
                    console.log('error!!!')

                }

            }
        });






    });

});