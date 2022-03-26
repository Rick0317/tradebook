window.addEventListener("load", ()=>{
   const title = document.getElementsByClassName("app_name");
   const charT = document.getElementById("char_T");
   const charB = document.getElementById("char_B");
   charT.addEventListener("mouseover", () => {
      charT.animate([
         { transform: 'translateY(0px)' },
         { transform: 'translateY(-300px)' }
      ], {
         duration: 1000,
         iterations: Infinity
       });
       console.log("hi")
   })
   titleMove(title)
   console.log("HHHHH")

});

function titleMove(title){
   title.animate([
      { transform: 'translateY(0px)' },
      { transform: 'translateY(-300px)' }
   ],{
      duration: 3000,
      iterations: Infinity
   })
   console.log("Is this working?")
}