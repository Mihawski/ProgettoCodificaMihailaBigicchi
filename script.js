let abbreviazioni = document.getElementsByClassName('abbreviazioni') //abbr --> expan

for (let abbreviazione of abbreviazioni) {
    let espansione = abbreviazione.nextElementSibling;
    abbreviazione.style.display = 'inline-block';
    espansione.style.display = 'none';
    espansione.addEventListener('click',
    function() {
        espansione.style.display = 'none'
        abbreviazione.style.display = 'inline-block' 
    })

    abbreviazione.addEventListener('click',
    function() {
        abbreviazione.style.display = 'none' 
        espansione.style.display = 'inline-block'
    })
}

let errori = document.getElementsByClassName('sic') //sic --> corr

for (let errore of errori) {
    let correzione = errore.nextElementSibling;
    correzione.style.display = 'none';
    errore.style.display = 'inline-block';
    
    errore.addEventListener('click',
    function() {
        errore.style.display = 'none'
        correzione.style.display = 'inline-block' 
    })

    correzione.addEventListener('click',
    function() {
        correzione.style.display = 'none' 
        errore.style.display = 'inline-block'
    })
}

function gestoreEvidenzia(name){  
    try {
        var x= document.getElementById(name);
        x.style.color="red";
       
    } catch(e) {
        alert("gestoreEvidenzia()"+e);   
    }                                     
}

function gestoreDisEvidenzia(name){  
    try {
        var x= document.getElementById(name);
        x.style.color="white";
        x.style.fontWeight="normal";
    } catch(e) {
        alert("gestoreDisEvidenzia()"+e);   
    }                                     
}

var checkbox = document.getElementById('term');
var term = document.getElementsByClassName('elemTerm');
checkbox.addEventListener('click', function() {
    for (termSing of term) {
            if (termSing.style.backgroundColor === 'yellow') {
                termSing.style.backgroundColor = 'transparent'
                termSing.style.color = 'white';
            } else {
                termSing.style.backgroundColor = 'yellow';
                termSing.style.color = 'black';
            }
        }});

 var checkbox = document.getElementById('esempioling');
        var mention = document.getElementsByClassName('menzioni');
        checkbox.addEventListener('click', function() {
            for (esempiol of mention) {
                    if (esempiol.style.backgroundColor === 'cyan') {
                        esempiol.style.backgroundColor = 'transparent'
                        esempiol.style.color = 'white';
                    } else {
                        esempiol.style.backgroundColor = 'cyan';
                        esempiol.style.color = 'black';
                    }
                }});

var checkbox = document.getElementById('aggiuntecur');
        var aggiuntecur = document.getElementsByClassName('aggiunte1');
        checkbox.addEventListener('click', function() {
            for (aggiuntacur of aggiuntecur) {
                    if (aggiuntacur.style.backgroundColor === 'greenyellow') {
                        aggiuntacur.style.backgroundColor = 'transparent'
                        aggiuntacur.style.color = 'white';
                    } else {
                        aggiuntacur.style.backgroundColor = 'greenyellow';
                        aggiuntacur.style.color = 'black';
                    }
                }});

var checkbox = document.getElementById('aggiunteaut');
        var aggiunteaut = document.getElementsByClassName('aggiunteAutore1');
        checkbox.addEventListener('click', function() {
            for (aggiuntaaut of aggiunteaut) {
                    if (aggiuntaaut.style.backgroundColor === 'palevioletred') {
                        aggiuntaaut.style.backgroundColor = 'transparent'
                        aggiuntaaut.style.color = 'white';
                    } else {
                        aggiuntaaut.style.backgroundColor = 'palevioletred';
                        aggiuntaaut.style.color = 'black';
                    }
                }});

 var checkbox = document.getElementById('abbreviazioni');
        var abbreviazionii = document.getElementsByClassName('abbreviazioni');
        checkbox.addEventListener('click', function() {
            for (abbr of abbreviazionii) {
                    if (abbr.style.color === 'red') {
                        abbr.style.color = 'white';
                    } else {
                        abbr.style.color = 'red';
                    }
                }});

var checkbox = document.getElementById('cancellazioni');
        var cancellazioni = document.getElementsByClassName('cancellazioni');
        checkbox.addEventListener('click', function() {
            for (cancellazione of cancellazioni) {
                    if (cancellazione.style.color === 'coral') {
                        cancellazione.style.color = 'white';
                    } else {
                        cancellazione.style.color = 'coral';
                    }
                }}); 

var checkbox = document.getElementById('correzioni');
        var correzionii = document.getElementsByClassName('sic');
        checkbox.addEventListener('click', function() {
            for (corr of correzionii) {
                    if (corr.style.color === 'blueviolet') {
                        corr.style.color = 'white';
                    } else {
                        corr.style.color = 'blueviolet';
                    }
                }}); 

var checkbox = document.getElementById('glottonimi');
        var glottonim = document.getElementsByClassName('lang');
        checkbox.addEventListener('click', function() {
            for (glott of glottonim) {
                    if (glott.style.color === 'lightblue') {
                        glott.style.color = 'white';
                    } else {
                        glott.style.color = 'lightblue';
                    }
                }});
                
                
        




    













