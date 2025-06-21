function requestAndShowPermission() {
    Notification.requestPermission(function (permission) {
        if (permission === "granted") {
            showNotification();
        }
    });
}

function showNotification() {
    let title = "I love Itzgametime Vip! Give us a rating!";
    let icon = '3D_Pizza.png'; // Ensure this path is correct and the image is small for fast loading
    let body = "Welcome to Itzgametime Vip User!!! :D";
    
    let notification = new Notification(title, { body, icon });

    notification.onclick = () => {
        var myWindow = window.open("https://itzgametime-vip.w3spaces.com", "popup", "height=500,width=700");
        myWindow.moveTo(300, 80);
        myWindow.focus();

        let speech = new SpeechSynthesisUtterance();
        speech.text = "Hello! Welcome.";
        window.speechSynthesis.speak(speech);

        notification.close();
        console.log("Closed Notification.");
        window.parent.focus();
    }
}

document.itzgametimevip = "Itzgametime Vip!";
alert("Welcome to " + document.itzgametimevip);
let presses = 0;

window.addEventListener("keydown", (event) => {
    switch (event.key) {
        case 'A':
            presses += 1;
            navigator.clipboard.writeText("🍕Itzgametime Vip");
            location.assign("#🍕itzgametimevip-copy");
            document.querySelector("itzgametimevip").innerHTML += "&#127829;";
            document.querySelector("#updates").innerHTML += ", Copied with emoji!";
            
            let permission = Notification.permission;
            if(permission === "granted") {
                showNotification();
            } else if(permission === "default") {
                requestAndShowPermission();
            }
            break;
    }
});
            function input() {
            const words = [
            "Be grateful with &#127829;Itzgametime Vip!",
            "Hey, Be careful what you wish for",
            "Happy Thanksgiving!",
            "&#127829;Itzgametime Vip!",
            "Why Thansgiving was made? Because the family needs a lovely meal! :D",
            "Hey! This tells facts ya'll!",
            "Hey, Hello and have a wonderful day! xD :) :D"
            ];
            const itzgametime = [
            "&#127829;Itzgametime Vip!",
            "&#127829;Itzgametime Vip"
            ];
            document.getElementById("itzgametimevip").innerHTML = itzgametime[Math.floor(Math.random()*2)];
            document.getElementById("words").innerHTML = words[Math.floor(Math.random()*7)];
            }
             if ('serviceWorker' in navigator) {
  window.addEventListener('load', () => {
    navigator.serviceWorker.register('sw.js')
      .then((reg) => {
        console.log('Service worker registered:', reg);
      })
      .catch((error) => {
        console.error('Service worker registration failed:', error);
      });
  });
}