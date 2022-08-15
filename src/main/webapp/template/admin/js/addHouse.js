document.querySelector("#file").addEventListener("change", function (e) {
    if (window.File && window.FileReader && window.FileList && window.Blob) {
        const files = e.target.files
        const output = document.querySelector("#result")
        for (let i = 0; i < files.length; i++) {
            if (!files[i].type.match("image")) continue
            const pickReader = new FileReader()
            pickReader.addEventListener("load", (e) => {
                let picFile = e.target;
                let div = document.createElement("div")
                div.style.position = "relative";
                div.innerHTML = `<img class="thunnail" src="${picFile.result}" title="${picFile.name}"/>
                                   <i onclick="removeImg(${files},${i})" class="fas fa-times thum-icon"/>`;
                output.appendChild(div)
            })
            pickReader.readAsDataURL(files[i])
        }
    } else {
        alert("Your browser does not support the File API")
    }
})
let removeImg = (arr,i)=>{
        arr.splice(i,1);
        console.log(arr);
}