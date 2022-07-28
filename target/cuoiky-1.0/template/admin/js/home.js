function senRedirectOnNewTag(link) {
    window.open(link, "_blank")
}


$('#over-plane div, #over-plane p').click((e) => {
    e.stopPropagation()
})

function confirmOrder(x, id_bill) {
    if (x === 1) {
        $('#over-plane p').html("Xác nhận đơn hàng")
    } else {
        $('#over-plane p').html("Xóa đơn hàng")
    }
    $('#over-plane').css("visibility", "visible")

    $('#over-plane,#question-no ').click((e) => {
        $('#over-plane').css("visibility", "hidden")
    })
    $('#question-yes').click((e) => {
        $('#over-plane').css("visibility", "hidden")
        $.ajax({
            url: "ConfirmOrderServlet",
            type: "get",
            data: {index: x, id_bill: id_bill},
            success(data) {
                if (data === '1') {
                    // su ly khong thanh cong
                } else {
                    $('#table-bill')[0].innerHTML = data
                }
            },
            error: function (error) {
                console.log("error" + error)
            }
        })
    })
}

function confirmChange(x, id_house) {
    if (x === 1) {
        //Redirect
    } else {
        $('#over-plane p').html("Xóa ngôi nhà?")
        $('#over-plane').css("visibility", "visible")

        $('#over-plane,#question-no ').click((e) => {
            $('#over-plane').css("visibility", "hidden")
        })
        $('#question-yes').click((e) => {
            $('#over-plane').css("visibility", "hidden")
            $.ajax({
                url: "ConfirmDeleteHouseServlet",
                type: "get",
                data: {id_house: id_house},
                success(data) {
                    if(data ==="1"){
                       // xu ly loi
                    }else{
                        $('#table-house')[0].innerHTML = data
                    }

                },
                error: function (error) {
                    console.log("error" + error)
                }
            })
        })
    }

}