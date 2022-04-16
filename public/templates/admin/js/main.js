$.ajaxSetup({
    headers: {
        'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
    }
});

function removeRow(id, url_)
{
    if (confirm('Xóa vĩnh viễn, bạn có chắc chắn?')) {
        $.ajax({
            type: 'DELETE',
            dataType: 'JSON',
            data: {id},
            url: url_,
            success: function(result) {
                if(result.error === false) {
                    alert(result.message);
                    location.reload();
                } else {
                    alert('Xóa lỗi, thử lại sau');
                }
            }
        })
    }
}

// Upload file
$('#thumb').change(function() {
    const form = new FormData();
    // console.log(form);
    form.append('thumb', $(this)[0].files[0])

    // console.log($(this)[0].files[0]);
    $.ajax({
        processData: false,
        contentType: false,
        type: 'POST',
        dataType: 'JSON',
        data: form,
        url: '/admin/upload/services',
        success: function(result) {
            if (result.error === false) {
                let image = '<a href="' + result.url + '" target="_blank"><image src="' + result.url + '" width="200px"></image></a>'
                $('#image_show').html(image);
                $('#file_link').val(result.url);
            } else {
                alert('Upload lỗi');
            }
        }
    })
})