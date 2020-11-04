function latex() {

  window.name = "";
  
  document.getElementById("item-info1").addEventListener('input', function(){
    let textarea1 = document.getElementById("item-info1").value;
    document.getElementById('latex1').innerHTML = document.getElementById('item-info1').value.replace(/</g, "&lt;").replace(/>/g, "&gt;");
    MathJax.Hub.Queue(["Typeset", MathJax.Hub, 'latex1']);
  })

  document.getElementById("item-info2").addEventListener('input', function(){
    let textarea2 = document.getElementById("item-info2").value;
    document.getElementById('latex2').innerHTML = document.getElementById('item-info2').value.replace(/</g, "&lt;").replace(/>/g, "&gt;");
    MathJax.Hub.Queue(["Typeset", MathJax.Hub, 'latex2']);
  })


}
window.addEventListener('load', latex)

if (window.name != "reload")
{
	location.reload();
	window.name = "reload";
}


