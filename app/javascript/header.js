window.addEventListener("load", ()=>{
   const title = document.getElementsByClassName("app_name");
   const charT = document.getElementById("char_T");
   const charB = document.getElementById("char_B");
   charT.style.visibility = 'hidden';
   charB.style.visibility = 'hidden';

   
   charT.addEventListener("mouseover", ()=>{
        charT.style.visibility = 'inherit';
    });
   charB.addEventListener("mouseover", ()=>{
        charB.style.visibility = 'inherit';
   });
   console.log("HHHHH")

});