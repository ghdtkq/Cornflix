
 const video = document.getElementById('video');
        const player = document.querySelector('.player');
        const controls = document.querySelector('.controls');
        const seekBarFill = document.getElementById('seek-bar-fill');
        var muteButton = document.getElementById("muteButton");
        let isFullscreen = false; 
        let isMuted = false; 

        function togglePlayPause() {
            if (video.paused) {
                video.play();
            } else {
                video.pause();
            }
        }

        function skip(seconds) {
            video.currentTime += seconds;
        }

        function seek(event) {
            const mouseX = event.clientX - player.getBoundingClientRect().left;
            const percentage = mouseX / player.offsetWidth;
            const newTime = percentage * video.duration;
            video.currentTime = newTime;
        }

        function updateSeekBar() {
            const percentage = (video.currentTime / video.duration) * 100;
            seekBarFill.style.width = `${percentage}%`;
        }
        
        function toggleFullScreen() {
            if (!isFullscreen) {
                if (player.requestFullscreen) {
                    player.requestFullscreen();
                } else if (player.mozRequestFullScreen) { 
                    player.mozRequestFullScreen();
                } else if (player.webkitRequestFullscreen) { 
                    player.webkitRequestFullscreen();
                } else if (player.msRequestFullscreen) { 
                    player.msRequestFullscreen();
                }
            } else {
                if (document.exitFullscreen) {
                    document.exitFullscreen();
                } else if (document.mozCancelFullScreen) { 
                    document.mozCancelFullScreen();
                } else if (document.webkitExitFullscreen) { 
                    document.webkitExitFullscreen();
                } else if (document.msExitFullscreen) {
                    document.msExitFullscreen();
                }
            }
        }

        muteButton.addEventListener("click", function () {

            video.muted = !video.muted;

            if (video.muted) {
                muteButton.src = "/mvcProject/img/mute.png";
            } else {
                muteButton.src = "/mvcProject/img/unmute.png";
            }
        });


        document.addEventListener('fullscreenchange', function () {
            if (!isFullscreen) { 
                video.style.width = '100vw';
                video.style.height = '100vh';
                controls.style.display = 'flex'; 
                controls.style.bottom = '9.5%';
                isFullscreen = true; 
            } else { 
                video.style.width = '100%';
                video.style.height = 'auto';
                controls.style.display = 'flex'; 
                controls.style.bottom = '1%';
                isFullscreen = false;
            }
        });

        video.addEventListener('timeupdate', updateSeekBar);

