$(document).ready(function () {
    getAllDDT();
});

function getAllDDT() {
    $.ajax({
        url: `https://localhost:7269/api/apiDDT`,
        method: 'GET',
        contentType: 'json',
        dataType: 'json',
        error: function (response) {
            console.log("error");
        },
        success: function (response) {
            var count = parseInt(response.totalCount);
            const pageNumber = 1;
            const pageSize = 5;
            $.ajax({
                url: `https://localhost:7269/api/apiDDT/getPagination?pageSize=${pageSize}&pagenumber=${pageNumber}`,
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
$("#form-DDT").submit(function (e) {
    e.preventDefault();
})
function renderPagination(totalPages, currentPage) {
    let pagination = '';
    for (let i = 1; i <= totalPages; i++) {
        pagination += `<button class="btn ${i === currentPage ? 'btn-primary' : 'btn-outline-primary'}" onclick="setPage(${i})">${i}</button> `;
    }
    document.getElementById('pagination_DDT').innerHTML = pagination;
}

function setPage(pageNumber) {
    const pageSize = 5;
    document.getElementById('page-number').innerHTML = pageNumber;
    $.ajax({
        url: `https://localhost:7269/api/apiDDT/getPagination?pageSize=${pageSize}&pagenumber=${pageNumber}`,
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
function Insert() {
    var maDd = $("#MaDDT").val();
    var matour = $("#MaTour").val();
    var vta = $("#ViTriAnh").val();

    var formData = new FormData();

    formData.append("maDd", maDd);
    formData.append("maTour", matour);
    formData.append("viTriAnh", vta);

    var url = 'https://localhost:7269/api/APIDDT/themDDT';
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
            getAllDDT(); //Gọi đến hàm lấy dữ liệu lên bảng
        }
    });
}

/*function deleteDDT(id) {
    var url = 'https://localhost:7269/api/ApiDiemThamQuan?xoa';
    $.ajax({
        url: url,
        method: 'DELETE',
        contentType: 'json',
        dataType: 'json',
        error: function (response) {
            *//* alert("Xóa không thành công");*//*
            getAllDiemThamQuan();
        },
        success: function (response) {
            alert("Xóa thành công");
            getAllDiemThamQuan(); //Gọi đến hàm lấy dữ liệu lên bảng
        }
    });
}*/
function resetInput() {
    $("#MaTour").val("").change()
    $("#MaDDT").val("").change()
    $("#ViTriAnh").val("").change()
}

function renderTable(response) {
    const len = response.items.length;
    let table = '';
    let cls = "table-success";

    for (var i = 0; i < len; ++i) {
        if (i % 2 == 0) {
            cls = "table-primary";
        }
        else {
            cls = "table-success";
        }
        table = table + '<tr class="' + cls + '">';
        table = table + '<td>' + response.items[i].tenTour.trim() + '</td>';
        table = table + '<td>' + response.items[i].tendiadiem.trim() + '</td>';
       
        table = table + `<td>${ !!response.items[i].viTriAnh.trim() ? response.items[i].viTriAnh.trim() : 'NOT!' }</td>`;

       /* table = table + '<td>' + ' <button type="button" class="btn btn-gradient-danger btn-rounded btn-icon" onclick="deleteDDT(\'' + response.items[i].maDd.trim() + '\')">Delete</button> ' + '</td>';*/
    }
    document.getElementById('tbody-DDT').innerHTML = table;
}