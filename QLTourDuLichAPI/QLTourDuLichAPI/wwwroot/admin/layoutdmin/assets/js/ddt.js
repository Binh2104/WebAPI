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
            const pageSize = 3;
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

       /* table = table + '<td>' + ' <button type="button" class="btn btn-gradient-info btn-rounded btn-icon" onclick="updateDTQFill(\'' + response.items[i].maDd.trim() + '\')">Edit</i></button> ' + '</td>';
        table = table + '<td>' + ' <button type="button" class="btn btn-gradient-danger btn-rounded btn-icon" onclick="deleteDTQ(\'' + response.items[i].maDd.trim() + '\')">Delete</button> ' + '</td>';*/
    }
    document.getElementById('tbody-DDT').innerHTML = table;
}