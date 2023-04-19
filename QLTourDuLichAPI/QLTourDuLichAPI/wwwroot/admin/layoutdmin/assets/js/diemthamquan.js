﻿$(document).ready(function () {
    getAllDiemthamquan();
});

function getAllDiemthamquan() {
    $.ajax({
        url: `https://localhost:7269/api/APIDiemThamQuan`,
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
                url: `https://localhost:7269/api/APIDiemThamQuan/getPagination?pageSize=${pageSize}&pagenumber=${pageNumber}`,
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
$("#form-diemthamquan").submit(function (e) {
    e.preventDefault();
})
function renderPagination(totalPages, currentPage) {
    let pagination = '';
    for (let i = 1; i <= totalPages; i++) {
        pagination += `<button class="btn ${i === currentPage ? 'btn-primary' : 'btn-outline-primary'}" onclick="setPage(${i})">${i}</button> `;
    }
    document.getElementById('pagination_diemthamquan').innerHTML = pagination;
}

function setPage(pageNumber) {
    const pageSize = 3;
    document.getElementById('page-number').innerHTML = pageNumber;
    $.ajax({
        url: `https://localhost:7269/api/APIDiemThamQuan/getPagination?pageSize=${pageSize}&pagenumber=${pageNumber}`,
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
function renderTable(response) {
    const len = response.items.length;
    let table = '';
    for (var i = 0; i < len; ++i) {
        table = table + '<tr>';
        table = table + '<td>' + response.items[i].maDd.trim() + '</td>';
        table = table + '<td>' + response.items[i].tendiadiem.trim() + '</td>';
        table = table + '<td>' + response.items[i].mien.trim() + '</td>';
        table = table + `<td class="py-1">
                    <img src="../../Images/Players/${!!response.items[i].anhdaidien ? response.items[i].tenFileAnh.trim() : 'default-avatar.png'}" alt="image" />
                </td>`;
       /* table = table + '<td>' + response.items[i].moTa.trim() + '</td>';*/

       /* table = table + '<td>' + ' <button type="button" class="btn btn-gradient-info btn-rounded btn-icon" onclick="updateCauThuFill(\'' + response.items[i].cauThuId.trim() + '\')"><i class="mdi mdi-table-edit"></i></button> ' + '</td>';
        table = table + '<td>' + ' <button type="button" class="btn btn-gradient-danger btn-rounded btn-icon" onclick="deleteCauThu(\'' + response.items[i].cauThuId.trim() + '\')"><i class="mdi mdi-delete-forever"></i></button> ' + '</td>';*/
    }
    document.getElementById('tbody-diemthamquan').innerHTML = table;
}