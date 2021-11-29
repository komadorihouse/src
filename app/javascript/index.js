function explanation() {
    const exp = document.querySelectorAll('.mer-explanation');
    const square = document.querySelectorAll('.show-square');
    const itemNum = document.getElementById('item-num');
    const numVal = itemNum.value
    const total = document.getElementById('total-price');
    const price = document.getElementById('price');
    var swi = 0
    square.forEach(function(e,i) {
        e.addEventListener("click", function(){
            if (swi == 0){
                exp[i].style.display="inline";
                exp[i].style.colspan="6";
                swi = 1;
                e.style.transform="rotate(0deg)";
                e.style.color="red";
            }else{
                exp[i].style.display="none";
                swi = 0;
                e.style.transform="rotate(-90deg)";
                e.style.color="#4e4e4e";
            };
        });
    });

    itemNum.addEventListener("input", function(e) {
        total.textContent = price.textContent * itemNum.value + "円";
    });
};
    

window.addEventListener('load', explanation);