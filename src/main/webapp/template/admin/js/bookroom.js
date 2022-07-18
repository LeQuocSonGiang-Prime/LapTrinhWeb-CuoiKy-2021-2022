let dateCheckin

let dateCheckout

//CHECK LEAP YEAR
isLeapYear = (year) => {
    return (year % 4 === 0 && year % 100 !== 100 && year % 400 !== 0) || (year % 100 === 0 && year % 400 === 0);
}

getFedDays = (year) => {
    return isLeapYear(year) ? 29 : 28;
}
let arrayDay
let arrayElement
let calendar = document.querySelector(".calendar");

const month_names = ['Tháng 1', 'Tháng 2', 'Tháng 3', 'Tháng 4', 'Tháng 5', 'Tháng 6', 'Tháng 7', 'Tháng 8', 'Tháng 9', 'Tháng 10', 'Tháng 11', 'Tháng 12'];

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

    arrayDay = [];
    arrayElement = [];

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
            if (i - firstDay.getDay() + 1 === currDate.getDate() && year === currDate.getFullYear() && month === currDate.getMonth()) {
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
                if (i - firstDay.getDay() + 1 < currDate.getDate()) day.classList.add('last-day')
            }
        }
        // if (!day.classList.contains('last-day')) {
        arrayDay.push(new Date(year, month, i - firstDay.getDay() + 1))
        arrayElement.push(day)
        //    day.onclick = () => {
        // handlingSelectDay(day, year, month, i - firstDay.getDay() + 1, arrayDay, arrayElement)

        //    }
        //}
        calendar_days.appendChild(day)
    }
    if (dateCheckin !== undefined && dateCheckout !== undefined) {
        handlingTimeOrder(arrayDay, arrayElement);
    }
}

let month_list = calendar.querySelector('.month-list')

month_names.forEach((e, index) => {
    let month = document.createElement('div')
    month.innerHTML = `<div>${e}</div>`;
    month.onclick = () => {
        month_list.classList.remove('show')
        generateCalendar(index, currYear.value)
        handlingTimeOrder(arrayDay, arrayElement)
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
let currMon = {value: currDate.getMonth()}
let currYear = {value: currDate.getFullYear()}
generateCalendar(currMon.value, currYear.value)


dateEqualss = (a, b) => {
    return a.getFullYear() === b.getFullYear() && a.getMonth() === b.getMonth() && a.getDate() === b.getDate();
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

// for SJP

handlingTimeOrder = (arrayDay, arrayElement, user) => {
    for (let i = 0; i < arrayDay.length; i++) {
        if ((arrayDay[i] > dateCheckin && arrayDay[i] < dateCheckout && arrayElement[i].innerText !== "")
            || (dateEqualss(arrayDay[i], dateCheckin) || dateEqualss(arrayDay[i], dateCheckout))) {
            arrayElement[i].classList.add('betweenSelecting')

        }
    }
}


