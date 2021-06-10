import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#banner-typed-text', {
    strings: ["Add a list", "Add a movie", "Add a bookmark"],
    typeSpeed: 50,
    loop: true
  });
}

export { loadDynamicBannerText };
