	function zoomIn(event) {
//   event.target.style.width = "600px";
//       event.target.style.height = "336px";
//       event.target.style.transition = "all 0.5s";
    event.target.style.transform = "scale(1.1)";
    event.target.style.zIndex = 1;
    event.target.style.transition = "all 0.3s";
    
  }

  function zoomOut(event) {
//   event.target.style.width = "500px";
//       event.target.style.height = "280px";
//       event.target.style.transition = "all 0.5s";
    event.target.style.transform = "scale(1)";
    event.target.style.zIndex = 0;
    event.target.style.transition = "all 0.3s";
  }
