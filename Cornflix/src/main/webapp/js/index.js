window.addEventListener('scroll', function() {
  var header = document.getElementById('header');

  // 스크롤 맨 위 일때 색 변경
  if (window.scrollY === 0) {
    header.classList.remove('transparent');
  } else {
    header.classList.add('transparent');
  }
});

//검색아이콘, 프로필 js
document.addEventListener("DOMContentLoaded", function() {
    var searchIcon = document.getElementById("searchIcon");
    var searchInput = document.querySelector(".search-input");   
    var profileIcon = document.getElementById("profileIcon");
    var profileMenu = document.querySelector(".profile-menu");

    // 돋보기 아이콘 클릭 시 검색 입력란 보이기
    searchIcon.addEventListener("click", function() {
        searchInput.style.display = "block";
        searchInput.focus(); // 입력란에 포커스 주기
    });

    // 프로필 아이콘 클릭 시 프로필 메뉴 보이기
    profileIcon.addEventListener("click", function() {
        profileMenu.style.display = "block";
        profileMenu.focus();
    });

    // 다른 곳을 클릭하면 검색 입력란과 프로필 메뉴 숨기기
    document.addEventListener("click", function(event) {
        var isClickInsideSearch = searchIcon.contains(event.target) || searchInput.contains(event.target);
        var isClickInsideProfile = profileIcon.contains(event.target) || profileMenu.contains(event.target);
        
        if (!isClickInsideSearch) {
            searchInput.style.display = "none";
        }
        
        if (!isClickInsideProfile) {
            profileMenu.style.display = "none";
        }
    });
});

function mute() {
   //비디오 음소거
   var video = document.getElementById("pm");
   var muteButton = document.getElementById("muteButton");
   
   muteButton.addEventListener("click", function() {
   
     video.muted = !video.muted;
     
     if (video.muted) {
       muteButton.src = "/mvcProject/img/mute.png";
     } else {
       muteButton.src = "/mvcProject/img/unmute.png";
     }
   });
}


function check() {
  var plusIcons = document.querySelectorAll('.plus-icon');
  var infoIcons = document.querySelectorAll('.info-icon');
  var additionalInfos = document.querySelectorAll('.movie-info');

  plusIcons.forEach(function(plusIcon) {
      plusIcon.addEventListener('click', function() {
          this.classList.toggle('active');

          var a = Array.from(plusIcons).indexOf(this);

          if (this.classList.contains('active')) {
              this.src = "/mvcProject/img/movie-hidden-check.png";
          } else {
              this.src = "/mvcProject/img/movie-hidden-plus.png";
          }
      });
  });

  infoIcons.forEach(function(infoIcon, a) {
      infoIcon.addEventListener('click', function() {
          additionalInfos[index].classList.toggle('hidden');
      });
  });
}


document.addEventListener('DOMContentLoaded', function() {
  const slider = document.querySelector('.slider');
  const slides = document.querySelectorAll('.slider-item');
  const prevBtn = document.querySelector('.prev-btn');
  const nextBtn = document.querySelector('.next-btn');
  const slideWidth = slides[0].clientWidth;
  const numSlidesToShow = 1;
  let currentIndex = 0;

  function updateSlider() {
      slider.style.transform = `translateX(-${currentIndex * slideWidth * numSlidesToShow}px)`;
  }

  function goToSlide(index) {
      currentIndex = index;
      updateSlider();
  }

  function goToNextSlide() {
      if (currentIndex < slides.length - numSlidesToShow) {
          currentIndex += numSlidesToShow;
      } else {
          currentIndex = 0;
      }
      updateSlider();
  }

  function goToPrevSlide() {
      if (currentIndex > 0 && currentIndex !== 0) {
          currentIndex -= numSlidesToShow;
      }
      updateSlider();
  }

  prevBtn.addEventListener('click', goToPrevSlide);
  nextBtn.addEventListener('click', goToNextSlide);
});



function toggleInfo( obj) {
   
    //var infoIcon = document.querySelector('.info-icon');
    let infoIcon =obj;
    let divParent  = obj.parentElement.parentElement; 
    
    var movieInfo = divParent.querySelector('.movie-info');
    
       console.log("info-icon"+  infoIcon);
       console.log(" movieInfo"+  movieInfo);

   
        if (movieInfo.classList.contains('hidden')) {
         //alert("hidden");
         console.log("hidden");
            infoIcon.src = "/mvcProject/img/movie-hidden-info-right.png";
            
             console.log(infoIcon.src  );
            
              console.log(  movieInfo.classList.length ) ;
            
            movieInfo.classList.remove('hidden');
            
            
            console.log(  movieInfo.classList.length ) ;
            
            
        } else {
            infoIcon.src = "/mvcProject/img/movie-hidden-info-left.png";
            movieInfo.classList.add('hidden');
        }
     
}

 