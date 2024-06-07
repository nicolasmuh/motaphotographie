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
// Flèches de navigation sur single-photographies.php
document.addEventListener("DOMContentLoaded", function () {

	// Si on se trouve sur la page single-photographies.php seulement
		let urlActuelle = window.location.href;
		if (urlActuelle.match(/photographies/)) {
		const flechePrecedente = document.querySelector('.navPreview');
		const flecheSuivante = document.querySelector('.navPostview');
		const zoneVignetteGauche = document.querySelector('.conteneur-vignette-precedent');
		const zoneVignetteDroite = document.querySelector('.conteneur-vignette-suivant');
		zoneVignetteGauche.style.display = "none";
		zoneVignetteDroite.style.display = "none";
	
		flechePrecedente.addEventListener('mouseenter', function() {
			zoneVignetteGauche.style.display = "flex";
		});
	
		flechePrecedente.addEventListener('mouseleave', function() {
			zoneVignetteGauche.style.display = "none";
		});
	
		flecheSuivante.addEventListener('mouseenter', function() {
			zoneVignetteDroite.style.display = "flex";
		});
	
		flecheSuivante.addEventListener('mouseleave', function() {
			zoneVignetteDroite.style.display = "none";
		});
	}
	
	overlay();
	});
	
	/////////////////////////////////////////////////////////////////////////
	
	// Overlay des photos de photo-bloc.php
	
	function overlay() {
		// Apparition de l'overlay au survol
		const autresPhotos = document.querySelectorAll('.autres-photos');
		console.log(autresPhotos)
		autresPhotos.forEach(element => {
			const overlay = element.querySelector('.survol-photo');
			const oeil = element.querySelector('.oeil');
			const divLienPhoto = element.querySelector('.lien-photo');
			const lienPhoto = divLienPhoto.innerHTML;
	
	
			// Début du survol
			element.addEventListener('mouseenter', function() {
				overlay.style.display = 'block';
			});
			// Fin du survol
			element.addEventListener('mouseleave', function() {
				overlay.style.display = 'none';
			});
	
			//////////////////////////
	
			// Clic sur l'oeil pour redirection de page
			oeil.addEventListener('click', function() {
				// Redirection vers la page de la photo
				window.location.href = lienPhoto;
			});
		});
	
		lightbox();
	}
	//gestion menu ecran <700px
	document.addEventListener("DOMContentLoaded", function () {
		const menuBurger = document.querySelector(".burger-open");
		const nav = document.querySelector("nav");
	
		function changeImageSrc(element, imageName) {
			let currentSrc = element.getAttribute("src");
			let srcArray = currentSrc.split("/");
			srcArray[srcArray.length - 1] = imageName;
			let newSrc = srcArray.join("/");
			element.setAttribute("src", newSrc);
		}
	
		menuBurger.addEventListener("click", function () {
				if (nav.style.display === "flex") {
					nav.style.display = "none";
					changeImageSrc(menuBurger, "burger-open.png");
	
				} else {
					nav.style.display = "flex";
					changeImageSrc(menuBurger, "burger-close.png");
				}
			});
	});