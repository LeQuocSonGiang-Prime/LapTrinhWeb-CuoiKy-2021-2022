


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

// Import the functions you need from the SDKs you need
import { initializeApp } from "firebase/app";
import { getAnalytics } from "firebase/analytics";
// TODO: Add SDKs for Firebase products that you want to use
// https://firebase.google.com/docs/web/setup#available-libraries

// Your web app's Firebase configuration
// For Firebase JS SDK v7.20.0 and later, measurementId is optional
const firebaseConfig = {
    apiKey: "AIzaSyD8xEDhU2nKhud0jI16p41m7fddoEJvgjE",
    authDomain: "web-batdongsan.firebaseapp.com",
    databaseURL: "https://web-batdongsan-default-rtdb.asia-southeast1.firebasedatabase.app",
    projectId: "web-batdongsan",
    storageBucket: "web-batdongsan.appspot.com",
    messagingSenderId: "984495197231",
    appId: "1:984495197231:web:284d19489acbf7841ccada",
    measurementId: "G-41NWTCEHH1"
};

// Initialize Firebase
const app = initializeApp(firebaseConfig);
const analytics = getAnalytics(app);


function upload(){
    let upload = firebase.storage().ref()

}