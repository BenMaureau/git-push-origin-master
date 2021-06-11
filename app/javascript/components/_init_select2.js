import $ from 'jquery';
import 'select2';

const initSelect2 = () => {
  if (!document.querySelector('.select2')) {
    return;
  };
  $('.select2').select2({ width: '100%' });
};

export { initSelect2 };
