let currentPage = 1
let data
let totalPage = Math.ceil()
let perPage = 12;
let minPageShow = 1
let maxPageShow = 10
let numPage = document.getElementsByClassName("num-page-item")
let arrowElement = document.getElementsByClassName("num-page-item-arrow")  // get 2 arrow

function showNumPage() {
    let elementContainNumPage = document.querySelector(".num-page")

    let arrowLeft = document.createElement("div")
    arrowLeft.classList.add("num-page-item-arrow")
    arrowLeft.innerText = '<'
    arrowLeft.onclick = function () {
        if (currentPage !== 1) clickArrowChangeNumPage(-1)
    }
    elementContainNumPage.appendChild(arrowLeft)
    for (let i = minPageShow; i < maxPageShow + 1; i++) {
        let itemNumPage = document.createElement("li")
        itemNumPage.classList.add("num-page-item")
        let numPage = document.createElement("div")
        numPage.innerText = `${i}`
        itemNumPage.appendChild(numPage)
        elementContainNumPage.appendChild(itemNumPage)
    }
    numPage[currentPage - 1].classList.add("active")

    let arrowRight = document.createElement("div")
    arrowRight.classList.add("num-page-item-arrow")
    arrowRight.innerText = '>'
    elementContainNumPage.appendChild(arrowRight)
    arrowRight.classList.add("num-page-item-arrow-enable")
    arrowRight.onclick = function () {
        if (currentPage !== maxPageShow) clickArrowChangeNumPage(1)
    }
    arrowElement[0].style.cursor = "not-allowed"
}

showNumPage()

for (let i = 0; i < numPage.length; i++) {
    numPage[i].children[0].onclick = function () {
        if (!numPage[i].classList.contains("active")) {
            numPage[i].classList.add("active")
            currentPage = i + 1
        }
        for (let j = 0; j < numPage.length; j++) {
            if (j !== i && numPage[j].classList.contains("active")) {
                numPage[j].classList.remove("active")
            }
        }
        setValueForInputPageCurrent()
    }
}

function clickArrowChangeNumPage(n) {
    numPage[currentPage - 1].classList.remove("active");
    currentPage += n
    if (currentPage === numPage.length + 1) {
        currentPage = 1
    } else if (currentPage === 0) {
        currentPage = numPage.length
    }
    numPage[currentPage - 1].classList.add("active");

    if (maxPageShow - minPageShow < 5) {}

    if (currentPage === maxPageShow) {
        arrowElement[1].style.cursor = "not-allowed"
        if (arrowElement[1].classList.contains("num-page-item-arrow-enable")) arrowElement[1].classList.remove("num-page-item-arrow-enable")
    } else {
        arrowElement[1].style.cursor = "pointer"
        if (!arrowElement[1].classList.contains("num-page-item-arrow-enable")) arrowElement[1].classList.add("num-page-item-arrow-enable")
    }

    if (currentPage === 1) {
        arrowElement[0].style.cursor = "not-allowed"
        if (arrowElement[0].classList.contains("num-page-item-arrow-enable")) arrowElement[0].classList.remove("num-page-item-arrow-enable")
    } else {
        arrowElement[0].style.cursor = "pointer"
        if (!arrowElement[0].classList.contains("num-page-item-arrow-enable")) arrowElement[0].classList.add("num-page-item-arrow-enable")
    }
    setValueForInputPageCurrent()
}

function setValueForInputPageCurrent(){
    let inputCurrentPage = document.querySelector("#input-currentPage")
    inputCurrentPage.value = currentPage

    $.ajax({
        url: "ControllerCatalogAjax",
        type:"get",
        data: {currentPage : currentPage},
        success(data){
            $('.row')[0].innerHTML = data
        },
        error : function(error){
            console.log( "error"+error)
        }
    })
}


