$(document).ready(function () {
    getAllTaikhoan();
});

function getAllTaikhoan() {
    $.ajax({
        url: `https://localhost:7269/api/apitaikhoan`,
        method: 'GET',
        contentType: 'json',
        dataType: 'json',
        error: function (response) {
            console.log("error");
        },
        success: function (response) {
            var count = parseInt(response.totalCount);
            const pageNumber = 1;
            const pageSize = 3;
            $.ajax({
                url: `https://localhost:7269/api/apitaikhoan/getPagination?pageSize=${pageSize}&pagenumber=${pageNumber}`,
                method: 'GET',
                contentType: 'json',
                dataType: 'json',
                error: function (response) {
                    console.log("error");
                },
                success: function (response) {
                    renderTable(response);
                    renderPagination(Math.ceil(count / pageSize), pageNumber);
                },
                fail: function (response) {
                    console.log("fail");
                }
            });
        },
    })
}
$("#form-taikhoan").submit(function (e) {
    e.preventDefault();
})
function renderPagination(totalPages, currentPage) {
    let pagination = '';
    for (let i = 1; i <= totalPages; i++) {
        pagination += `<button class="btn ${i === currentPage ? 'btn-primary' : 'btn-outline-primary'}" onclick="setPage(${i})">${i}</button> `;
    }
    document.getElementById('pagination_taikhoan').innerHTML = pagination;
}

function setPage(pageNumber) {
    const pageSize = 3;
    document.getElementById('page-number').innerHTML = pageNumber;
    $.ajax({
        url: `https://localhost:7269/api/apitaikhoan/getPagination?pageSize=${pageSize}&pagenumber=${pageNumber}`,
        method: 'GET',
        contentType: 'json',
        dataType: 'json',
        error: function (response) {
            console.log("error");
        },
        success: function (response) {
            renderTable(response);
        },
        fail: function (response) {
            console.log("fail");
        }
    });
}

function resetInput() {
    $("#userName").val("").change()
    $("#loai").val("").change()
    $("#password").val("").change()
    $("#confirmPassword").val("").change()
}
function InsertTK() {
    var UserName = $("#userName").val();
    var Loai = $("#loai").val();
    var Password = $("#password").val();
    var ConfirmPassword = $("#confirmPassword").val();

    table = table + '<td>' + response.items[i].userName.trim() + '</td>';
    table = table + '<td>' + response.items[i].loai.trim() + '</td>';
    table = table + '<td>' + response.items[i].password.trim() + '</td>';
    table = table + '<td>' + response.items[i].confirmPassword.trim() + '</td>';


    formData.append("userName", UserName);
    formData.append("loai", Loai);
    formData.append("password", Password);
    formData.append("confirmPassword", ConfirmPassword);

    var url = 'https://localhost:7269/api/apitaikhoan/themTK';
    $.ajax({
        url: url,
        method: 'POST',
        processData: false,
        contentType: false,
        data: formData,
        error: function (error) {
            alert("Có lỗi xảy ra");
        },
        success: function (response) {
            alert("Thêm mới thành công");
            resetInput();
            getAllTaikhoan(); //Gọi đến hàm lấy dữ liệu lên bảng
        }
    });
}
function UpdateTK() {
    var UserName = $("#userName").val();
    var Loai = $("#loai").val();
    var Password = $("#password").val();
    var ConfirmPassword = $("#confirmPassword").val();



    formData.append("userName", UserName);
    formData.append("loai", Loai);
    formData.append("password", Password);
    formData.append("confirmPassword", ConfirmPassword);

    var url = 'https://localhost:7269/api/apitaikhoan/capnhatTK';
    $.ajax({
        url: url,
        method: 'PUT',
        processData: false,
        contentType: false,
        data: formData,
        error: function (error) {
            alert("Có lỗi xảy ra");
        },
        success: function (response) {
            alert("Cập nhật thành công");
            resetInput();
            getAllTaikhoan(); //Gọi đến hàm lấy dữ liệu lên bảng
        }
    });
}

function updateTKFill(id) {
    var url = 'https://localhost:7269/api/Apitaikhoan/getById?id=' + id;
    $.ajax({
        url: url,
        method: 'GET',
        contentType: 'json',
        dataType: 'json',
        error: function (response) {
            alert("Cập nhật không thành công");
        },
        success: function (response) {
            $("#userName").val(response.userName.trim())
            $("#loai").val(response.loai.trim()).change()
            $("#password").val(response.password.trim()).change()
            $("#confirmPassword").val(response.confirmPassword.trim()).change()
        }
    });
}

function deleteTK(id) {
    var url = 'https://localhost:7269/api/Apitaikhoan?input=' + id;
    $.ajax({
        url: url,
        method: 'DELETE',
        contentType: 'json',
        dataType: 'json',
        error: function (response) {
            /* alert("Xóa không thành công");*/
            getAllTaikhoan();
        },
        success: function (response) {
            alert("Xóa thành công");
            getAllTaikhoan(); //Gọi đến hàm lấy dữ liệu lên bảng
        }
    });
}

function renderTable(response) {
    const len = response.items.length;
    let table = '';
    for (var i = 0; i < len; ++i) {
        table = table + '<tr>';
        table = table + '<td>' + response.items[i].userName.trim() + '</td>';
        table = table + '<td>' + response.items[i].loai + '</td>';
        table = table + '<td>' + response.items[i].password.trim() + '</td>';
        table = table + '<td>' + response.items[i].confirmPassword.trim() + '</td>';

        table = table + '<td>' + ' <button type="button" class="btn btn-gradient-info btn-rounded btn-icon" onclick="updateTKFill(\'' + response.items[i].userName.trim() + '\')">Edit</i></button> ' + '</td>';
        table = table + '<td>' + ' <button type="button" class="btn btn-gradient-danger btn-rounded btn-icon" onclick="deleteTK(\'' + response.items[i].userName.trim() + '\')">Delete</button> ' + '</td>';
    }
    document.getElementById('tbody-taikhoan').innerHTML = table;
}