function explanation() {
    const exp = document.querySelectorAll('.mer-explanation');
    const square = document.querySelectorAll('.show-square');
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
};
    

window.addEventListener('load', explanation);