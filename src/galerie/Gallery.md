<div class="gallery">
	<a href="Gallery/sample-01.jpg"><img src="Gallery/sample-01~tn.jpg" alt="sample-01.jpg" width="200" height="200"/></a>
	<a href="Gallery/sample-02.jpg"><img src="Gallery/sample-02~tn.jpg" alt="sample-02.jpg" width="200" height="200"/></a>
	<a href="Gallery/sample-03.jpg"><img src="Gallery/sample-03~tn.jpg" alt="sample-03.jpg" width="200" height="200"/></a>
	<a href="Gallery/sample-04.jpg"><img src="Gallery/sample-04~tn.jpg" alt="sample-04.jpg" width="200" height="200"/></a>
	<a href="Gallery/sample-05.jpg"><img src="Gallery/sample-05~tn.jpg" alt="sample-05.jpg" width="200" height="200"/></a>
	<a href="Gallery/sample-06.jpg"><img src="Gallery/sample-06~tn.jpg" alt="sample-06.jpg" width="200" height="200"/></a>
</div>

<p><button onclick="window.location.href = '/';">Domů</button></p>


<script type="text/javascript">

lightboxInit();

function lightboxInit() {
	// Add event listeners to all images in the gallery
	document.querySelectorAll(".gallery a img").forEach(element => {
		element.addEventListener("click", event => {
			// Prevent the default action of the click event
			event.preventDefault();

			// Open the lightbox dialog
			lightboxOpen(element.parentElement);
		});
	});

	// Create new lightbox dialog
	window.lightboxDialog = document.createElement("dialog");
	window.lightboxDialog.className = "lightbox";
	window.lightboxDialog.innerHTML = `<span class="close">&#x2573;</span><img src="" alt="" /><footer><span class="prev">&#x25C0; PageUp</span><span class="next">PageDown &#x25B6;</span><span class="info"></span></footer>`;
	document.body.appendChild(window.lightboxDialog);

	// Handle prev, next and close buttons
	window.lightboxDialog.querySelector("footer .prev").addEventListener("click", () => lightboxNavigate(-1));
	window.lightboxDialog.querySelector("footer .next").addEventListener("click", () => lightboxNavigate(+1));
	window.lightboxDialog.querySelector("span.close").addEventListener("click", lightboxClose);

	// Close the lightbox dialog on click
	window.lightboxDialog.querySelector("img").addEventListener("click", lightboxClose);

	// React to keyboard events
	window.addEventListener("keydown", event => {
		// Ignore the key event if the lightbox dialog is not open
		if (!window.lightboxDialog.open) return;

		// Navigate between images in the lightbox dialog
		if (event.key === "Escape") {
			event.preventDefault();
			lightboxClose()
		} else if (event.key === "ArrowLeft" || event.key === "PageUp") {
			event.preventDefault();
			lightboxNavigate(-1);
		} else if (event.key === "ArrowRight" || event.key === "PageDown") {
			event.preventDefault();
			lightboxNavigate(1);
		} else if (event.key === "Home") {
			event.preventDefault();
			lightboxNavigate(-Infinity);
		} else if (event.key === "End") {
			event.preventDefault();
			lightboxNavigate(Infinity);
		}
	});

	// Open the lightbox dialog if the hash changes
	window.addEventListener("hashchange", () => {
		const linkElement = document.querySelector(`.gallery a[href='${location.hash.substring(1)}']`);
		if (linkElement) lightboxOpen(linkElement);
	});

	// Variables to store touch coordinates
	let startX;
	let startY;

	// Detect swipe gestures on the lightbox dialog
	window.lightboxDialog.addEventListener("touchstart", event => {
		startX = event.touches[0].clientX;
		startY = event.touches[0].clientY;
	});
	window.lightboxDialog.addEventListener("touchmove", event => event.preventDefault());
	window.lightboxDialog.addEventListener("touchend", event => {
		// Calculate the distance between the initial and final touch coordinates
		const deltaX = event.changedTouches[0].clientX - startX;
		const deltaY = event.changedTouches[0].clientY - startY;

		// Check if the swipe was horizontal and long enough
		if (Math.abs(deltaX) > Math.abs(deltaY) && Math.abs(deltaX) > 50) {
			// Navigate to the previous or next image
			lightboxNavigate(deltaX < 0 ? -1 : +1);
		}

		// Check if the swipe was vertical and long enough
		if (Math.abs(deltaY) > Math.abs(deltaX) && Math.abs(deltaY) > 50) {
			// Navigate to first or last image
			lightboxNavigate(deltaY < 0 ? -Infinity : Infinity);
		}
	});

}

function lightboxOpen(linkElement) {
	// Set hash to relative URL of the clicked image
	document.location.hash = linkElement.href.replace(location.origin, "");

	// Show image in lightbox
	window.lightboxDialog.querySelector("img").src = linkElement.href;

	// Show image info in footer
	window.lightboxDialog.querySelector("footer .info").textContent = linkElement.querySelector("img").alt;

	// Store the clicked link
	window.lightboxDialog.currentLink = linkElement;

	// Show lightbox
	window.lightboxDialog.showModal();
}

function lightboxClose() {
	window.lightboxDialog.close();
	history.pushState("", document.title, window.location.pathname + window.location.search);
}

function lightboxNavigate(step) {
	// Ignore the navigation if the lightbox dialog is not open
	if (!window.lightboxDialog.open) return;

	// Get the current link element
	const currentLink = window.lightboxDialog.currentLink;
	if (!currentLink) return;

	if (step === -Infinity) {
		// Navigate to the first image
		lightboxOpen(currentLink.parentElement.firstElementChild);
	} else if (step === -1) {
		// Navigate to the previous image
		lightboxOpen(currentLink.previousElementSibling);
	} else if (step === 1) {
		// Navigate to the next image
		lightboxOpen(currentLink.nextElementSibling);
	} else if (step === Infinity) {
		// Navigate to the last image
		lightboxOpen(currentLink.parentElement.lastElementChild);
	}
}

</script>
