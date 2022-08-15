let dateCheckinElement
let dateCheckoutElement
    // date
let dateCheckin
let dateCheckout
let titleDateCheckin = document.querySelector('#checkin-title')
let titleDateCheckout = document.querySelector('#checkout-title')
let buttonCloseCelendar = document.querySelector('.calendar-footer button')
let buttonDeleteDateSelect = document.querySelector('.calendar-footer h3')

//CHECK LEAP YEAR
isLeapYear = (year) => {
    return (year % 4 === 0 && year % 100 !== 100 && year % 400 !== 0) ||
        (year % 100 === 0 && year % 400 === 0);
}

getFedDays = (year) => {
    return isLeapYear(year) ? 29 : 28;
}

let calendar = document.querySelector(".calendar");

// const month_names = ['January', 'February', 'March', 'April', 'May', 'June ',
//     'July', 'August', 'September', 'October', 'November', 'December'];

const month_names = ['Tháng 1', 'Tháng 2', 'Tháng 3', 'Tháng 4', 'Tháng 5', 'Tháng 6', 'Tháng 7', 'Tháng 8',
    'Tháng 9', 'Tháng 10', 'Tháng 11', 'Tháng 12'
];

let month_picker = document.querySelector('.month-picker');
month_picker.onclick = () => {
        month_list.classList.add('show');
    }
    //GENETATE CALENDAR
generateCalendar = (month, year) => {
    let calendar_days = document.querySelector('.calendar-days');
    calendar_days.innerHTML = ''
    let calendar_header_year = document.querySelector('.year');
    let dayOfMonth = [31, getFedDays(year), 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]

    let arrayDay = [];
    let arrayElement = [];

    let currDate = new Date();
    month_picker.innerHTML = month_names[month];
    calendar_header_year.innerHTML = year;
    let firstDay = new Date(month, year, 1);
    for (let i = 0; i <= dayOfMonth[month] + firstDay.getDay() - 1; i++) {
        let day = document.createElement('div')
        if (i >= firstDay.getDay()) {
            day.classList.add('calendar-day-hover');
            day.innerHTML = i - firstDay.getDay() + 1 + ''
            day.innerHTML += '<span></span><span></span><span></span><span></span>'
            if (i - firstDay.getDay() + 1 === currDate.getDate() && year === currDate.getFullYear() &&
                month === currDate.getMonth()) {
                day.classList.add('curr-date')
            }
        }
        //determined last times
        if (year < currDate.getFullYear()) {
            day.classList.add('last-day')
        } else if (year === currDate.getFullYear()) {
            if (month < currDate.getMonth()) {
                day.classList.add('last-day')
            } else if (month === currDate.getMonth()) {
                if (i - firstDay.getDay() + 1 < currDate.getDate())
                    day.classList.add('last-day')
            }
        }
        if (!day.classList.contains('last-day')) {
            arrayDay.push(new Date(year, month, i - firstDay.getDay() + 1))
            arrayElement.push(day)
            day.onclick = () => {
                handlingSelectDay(day, year, month, i - firstDay.getDay() + 1, arrayDay, arrayElement)
            }
        }
        calendar_days.appendChild(day)
    }
    if (dateCheckin !== undefined && dateCheckout !== undefined) {
        betweenSelected(arrayDay, arrayElement);
    }
}

let month_list = calendar.querySelector('.month-list')

month_names.forEach((e, index) => {
    let month = document.createElement('div')
    month.innerHTML = `<div>${e}</div>`;
    month.onclick = () => {
        month_list.classList.remove('show')
        generateCalendar(index, currYear.value)
    }
    month_list.appendChild(month);
})

document.querySelector('#prev-year').onclick = () => {
    --currYear.value;
    generateCalendar(currMon.value, currYear.value)
}
document.querySelector('#next-year').onclick = () => {
    ++currYear.value;
    generateCalendar(currMon.value, currYear.value)
}
let currDate = new Date();
let currMon = { value: currDate.getMonth() }
let currYear = { value: currDate.getFullYear() }
generateCalendar(currMon.value, currYear.value)

// Hide or show calendar

let switchToggle = true; //if switchToggle ==true=> checkin just pressed and vice versa

document.querySelector(".book-room-checkin").onclick = () => {
    if (document.querySelector("#sg-control").classList.contains('show-calendar')) {
        if (switchToggle) {
            document.querySelector("#sg-control").classList.remove('show-calendar')
        }
    } else {
        document.querySelector("#sg-control").classList.add('show-calendar')
    }
    switchToggle = true
    checkingSelecting()
}

document.querySelector(".book-room-checkout").onclick = () => {
    if (document.querySelector("#sg-control").classList.contains('show-calendar')) {
        if (!switchToggle) {
            document.querySelector("#sg-control").classList.remove('show-calendar')
        }
    } else {
        document.querySelector("#sg-control").classList.add('show-calendar')
    }
    switchToggle = false
    checkingSelecting()
}

checkingSelecting = () => {
    if (document.querySelector("#sg-control").classList.contains('show-calendar')) {
        if (switchToggle) {
            document.querySelector(".book-room-checkin").classList.add('selecting')
            document.querySelector(".book-room-checkout").classList.remove('selecting')
        } else {
            document.querySelector(".book-room-checkout").classList.add('selecting')
            document.querySelector(".book-room-checkin").classList.remove('selecting')
        }
    } else {
        document.querySelector(".book-room-checkin").classList.remove('selecting')
        document.querySelector(".book-room-checkout").classList.remove('selecting')
    }
}

handlingSelectDay = (element, year, month, day, arrayDay, arrayElement) => {
    if (document.querySelector(".book-room-checkin").classList.contains('selecting')) {
        if (dateCheckinElement === undefined) {
            element.classList.add('selecting')
            dateCheckinElement = element;
        } else {
            dateCheckinElement.classList.remove('selecting');
            dateCheckinElement = element;
            dateCheckinElement.classList.add('selecting')
        }
        dateCheckin = new Date(year, month, day)
    } else if (document.querySelector(".book-room-checkout").classList.contains('selecting')) {
        let checkout = new Date(year, month, day)
        if (checkout >= dateCheckin) {
            if (dateCheckoutElement === undefined) {
                element.classList.add('selecting')
                dateCheckoutElement = element;
            } else {
                dateCheckoutElement.classList.remove('selecting');
                dateCheckoutElement = element;
                dateCheckoutElement.classList.add('selecting')
            }
            dateCheckout = new Date(year, month, day)
            betweenSelected(arrayDay, arrayElement);
        }
    }
    changeTitleButtonChecking()
    updateTitle()
}
let array
betweenSelected = (arrayDay, arrayElement) => {
    for (let i = 0; i < arrayDay.length; i++) {
        if (arrayDay[i] > dateCheckin && arrayDay[i] < dateCheckout && arrayElement[i].innerText !== "") {
            arrayElement[i].classList.add('betweenSelecting')
        }
        if (dateEqualss(arrayDay[i], dateCheckin) || dateEqualss(arrayDay[i], dateCheckout)) {
            arrayElement[i].classList.add('selecting')
        }
    }
    array = arrayDay
}
dateEqualss = (a, b) => {
    return a.getFullYear() === b.getFullYear() && a.getMonth() === b.getMonth() && a.getDate() === b.getDate();
}

updateTitle = () => {
    if (dateCheckin !== undefined) {
        titleDateCheckin.innerText = dateCheckin.getDate() + '/' + dateCheckin.getMonth() + '/' + dateCheckin.getFullYear()
    } else {
        titleDateCheckin.innerText = 'Thêm ngày'
    }
    if (dateCheckout !== undefined) {
        titleDateCheckout.innerText = dateCheckout.getDate() + '/' + dateCheckout.getMonth() + '/' + dateCheckout.getFullYear()
    } else {
        titleDateCheckout.innerText = 'Thêm ngày'
    }
}

buttonCloseCelendar.onclick = () => {
    document.querySelector('#sg-control').classList.remove('show-calendar')
    if (document.querySelector(".book-room-checkin").classList.contains('selecting')) {
        document.querySelector(".book-room-checkin").classList.remove('selecting')
    } else {
        document.querySelector(".book-room-checkout").classList.remove('selecting')
    }
}

buttonDeleteDateSelect.onclick = () => {
        dateCheckin = undefined
        dateCheckout = undefined
        dateCheckinElement = undefined
        dateCheckoutElement = undefined
        generateCalendar(currMon.value, currYear.value)
        updateTitle()
        changeTitleButtonChecking()
    }
    //order customer
document.querySelector('.customer .s').onclick = () => {
    document.querySelector('.customer-order').classList.toggle('show')
    if (document.querySelector('.customer-order').classList.contains('show')) {
        document.querySelector('.customer .s').classList.add('selecting')
        document.querySelector('.customer .s i').classList.remove('fa-chevron-down')
        document.querySelector('.customer .s i').classList.add('fa-chevron-up')
    } else {
        document.querySelector('.customer .s').classList.remove('selecting')
        document.querySelector('.customer .s i').classList.add('fa-chevron-down')
        document.querySelector('.customer .s i').classList.remove('fa-chevron-up')
    }
}

document.querySelector('.customer-footer button').onclick = () => {
    document.querySelector('.customer-order').classList.toggle('show')
    document.querySelector('.customer .s').classList.remove('selecting')
}

document.querySelector('.book-room-submit').onclick = () => {
    if (dateCheckin === undefined) {
        document.querySelector(".book-room-checkin").classList.add('selecting')
        document.querySelector("#sg-control").classList.add('show-calendar')
    } else if (dateCheckout === undefined) {
        document.querySelector(".book-room-checkout").classList.add('selecting')
        document.querySelector("#sg-control").classList.add('show-calendar')
    }
}

changeTitleButtonChecking = () => {
    if (dateCheckout !== undefined && dateCheckin !== undefined) {
        let buttonSubmit = document.querySelector('.book-room-submit-btn')
        buttonSubmit.innerText = 'Đặt phòng'
        let priceOnTime = document.querySelector('.priceOnTime')
        while (priceOnTime.hasChildNodes()) {
            priceOnTime.removeChild(priceOnTime.firstChild);
        }
        buttonSubmit.onclick = function() {
            console.log("hehehehe")
            location.assign('./confirm.html');

        }
        createElementDetail()
    } else {
        document.querySelector('.book-room-submit-btn').innerText = 'Kiểm tra tình trạng còn phòng'
        let priceOnTime = document.querySelector('.priceOnTime')
        while (priceOnTime.hasChildNodes()) {
            priceOnTime.removeChild(priceOnTime.firstChild);
        }
        let serviceChange = document.querySelector('.service-charge')
        while (serviceChange.hasChildNodes()) {
            serviceChange.removeChild(serviceChange.firstChild);
        }
        let sale = document.querySelector('.sale')
        while (sale.hasChildNodes()) {
            sale.removeChild(sale.firstChild);
        }
    }
}

createElementDetail = () => {
    let headerPrice = document.querySelector('.book-room-header-price>span')
    let timeOrder = lessTime()
        // Price on Time
    let priceOnTime = document.querySelector('.priceOnTime')

    let elementTimeSPAN = document.createElement("span")
    elementTimeSPAN.innerText = `${headerPrice.innerText} x ${timeOrder} đêm`
    priceOnTime.appendChild(elementTimeSPAN)

    let elementPriceSPAN = document.createElement("span")
    elementPriceSPAN.innerText = `$${parseInt(headerPrice.innerText.slice(1, headerPrice.innerText.length)) * timeOrder}`
    priceOnTime.appendChild(elementPriceSPAN)

    //Sale
    let serviceCharge = document.querySelector('.service-charge')

    let elementService = document.createElement("span")
    elementService.innerText = 'Phí dịch vụ'
    serviceCharge.appendChild(elementService)

    let elementServicePrice = document.createElement("span")
    elementServicePrice.innerText = '$8'
    serviceCharge.appendChild(elementServicePrice)

    if (timeOrder > 7) {
        let sale = document.querySelector('.sale')

        let elementSale = document.createElement("span")
        elementSale.innerText = 'Giảm theo tuần'
        sale.appendChild(elementSale)

        let elementSalePrice = document.createElement("span")
        elementSalePrice.innerText = `$${parseInt(lessTime() / 7 + '') * 2}`
        sale.appendChild(elementSalePrice)
    }
}

lessTime = () => {
    if (dateCheckin.getFullYear() === dateCheckout.getFullYear()) {
        if (dateCheckin.getMonth() === dateCheckout.getMonth()) {
            if (dateCheckin.getDate() === dateCheckout.getDate()) {
                return 1;
            } else {
                return dateCheckout.getDate() - dateCheckin.getDate() + 1
            }
        } else {
            let date = dateCheckin
            let lessTime = 0
            while (date.getMonth() !== dateCheckout.getMonth() + 1) {
                let dayOfMonth = [31, getFedDays(date.getFullYear()), 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
                if (date.getMonth() === dateCheckin.getMonth()) {
                    lessTime += dayOfMonth[date.getMonth()] - date.getDate()
                } else if (date.getMonth() === dateCheckout.getMonth()) {
                    lessTime += dateCheckout.getDate()
                } else if (date.getMonth() > dateCheckin.getMonth()) {
                    lessTime += dayOfMonth[date.getMonth()]
                }
                date.setMonth(date.getMonth() + 1)
            }
            return lessTime
        }
    } else {
        let date = dateCheckin
        let lessTime = 0
        while (date.getFullYear() !== dateCheckout.getFullYear() + 1) {
            let dayOfMonth = [31, getFedDays(date.getFullYear()), 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
            if (date.getFullYear() === dateCheckin.getFullYear()) {
                let month = date.getMonth()
                while (month < 12) {
                    console.log(date.getMonth())
                    if (month === dateCheckin.getMonth()) {
                        lessTime += dayOfMonth[month] - date.getDate()
                    } else if (month === dateCheckout.getMonth()) {
                        lessTime += dateCheckout.getDate()
                    } else if (month > dateCheckin.getMonth()) {
                        lessTime += dayOfMonth[month]
                    }
                    month++;
                }
            } else if (date.getFullYear() === dateCheckout.getFullYear()) {
                let newCurrentMon = 0;
                while (newCurrentMon < dateCheckout.getMonth()) {
                    lessTime += dayOfMonth[newCurrentMon]
                    newCurrentMon++;
                }
                lessTime += dateCheckout.getDate()
            } else {
                //nam nay nam giua 2 nam
                lessTime = 337 + getFedDays(date.getFullYear())
            }
            date.setFullYear(date.getFullYear() + 1)
        }
        return lessTime
    }
}