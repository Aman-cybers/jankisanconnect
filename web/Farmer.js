var select = document.querySelector("#select");
var farmer = document.querySelector("#farmer");
var buyer = document.querySelector("#buyer");
var loginfb = document.querySelector("#loginfb");
var loginfb = document.querySelector("#loginfb");
var hide = document.querySelector("#hide");
farmer.addEventListener("click", function () {
    select.textContent = "Farmer";
    select.setAttribute("name" ,"select");
    hide.setAttribute("name", "farmer")

});

buyer.addEventListener("click", function () {
    select.textContent = "Buyer";
    select.setAttribute("name", "buyur")
    hide.setAttribute("name", "buyur")
});


