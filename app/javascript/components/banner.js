import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#banner-typed-text', {
    strings: ["Store your cocktails", "Save your parties"],
    typeSpeed: 50,
    loop: true
  });
};

export { loadDynamicBannerText };
