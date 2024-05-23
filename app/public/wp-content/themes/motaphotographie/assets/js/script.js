// Gestion de la modale de contact
document.addEventListener("DOMContentLoaded", function () { 
	const boutonContact = document.querySelector("#menu-item-47");
	const modale = document.querySelector(".modale");
	const boutonFermeture = document.querySelector(".mod-button");
	const conteneurModale = document.getElementById("modale");
	
	boutonContact.addEventListener("click", function() {
	    // Gestion de la fermeture de la modale - En cliquant à nouveau sur Contact
	    if (modale.style.display === "block") {
	        modale.style.display = "none";
	    }
	    else {
	        modale.style.display = "block";
	    }
	});
	
	// Fermeture de la modale lorsqu'on clic sur la croix
	boutonFermeture.addEventListener("click", function() {
	    modale.style.display = "none";
	});
	
	// Fermeture de la modale lorsqu'on clic hors de la modale
	window.addEventListener('click', (event) => {
	    if (event.target === conteneurModale) {
	        modale.style.display = "none";
	    }
	});
});

// Lorsqu'on click sur le bouton "Contact" sur la page d'une photo, on ouvre la modale et on remplit automatique de la référence en fonction de la photo
document.addEventListener("DOMContentLoaded", function () {

    // Si on se trouve sur la page single-photographies.php seulement
    let urlActuelle = window.location.href;

    if (urlActuelle.match(/photographies/)) {
        const nav = document.querySelector("nav");
        const boutonContactPhoto = document.querySelector(".interaction-button");
        const modaleBis = document.querySelector(".modale");
        const refARemplir = document.querySelector(".F-reference input");
        const refADupliquer = document.getElementById("ref-foto");

        boutonContactPhoto.addEventListener("click", function () {
            nav.classList.add("active");
            refARemplir.value = refADupliquer.textContent;
            modaleBis.style.display = "block";
            window.scrollTo({
                top: 0,
                behavior: "smooth"
            });
        });
    }
});
