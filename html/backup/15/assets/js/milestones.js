$(document).ready(function(){
    //console.log('asdasdasd');
    var svgOpt_01 = $('<svg version="1.1" class="svg_path_01" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 158.7 199.5" style="enable-background:new 0 0 158.7 199.5;" xml:space="preserve"><path  d="M0,0c0,0.8,0,1.5,0,2.3c0.5,32.2,27.5,58.3,60.1,58.3h39.2c11.2,0,21.6,4.4,29.5,12.4c7.8,8,12,18.5,11.9,29.7 c-0.4,22.4-19.3,40.6-42.1,40.6H59.4c-16,0-31.1,6.3-42.3,17.7C6.8,171.5,0.9,185,0.2,199.5h18c0.7-9.8,4.8-18.8,11.7-25.9 c7.8-8,18.3-12.4,29.5-12.4h39.2c32.6,0,59.6-26.2,60.1-58.3c0.3-16-5.8-31.2-17-42.6c-11.2-11.4-26.3-17.7-42.3-17.7H60.2 C37.3,42.6,18.4,24.4,18.1,2c0-0.7,0-1.3,0-2L0,0L0,0z" style="fill:none;stroke:#3fa9f5;stroke-miterlimit:10;stroke-width:5px"/></svg>');

    var svgOpt_02 = $('<svg version="1.1" class="svg_path_02" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 158.7 199.5" style="enable-background:new 0 0 158.7 199.5;" xml:space="preserve"><path  d="M0,0c0,0.8,0,1.5,0,2.3c0.5,32.2,27.5,58.3,60.1,58.3h39.2c11.2,0,21.6,4.4,29.5,12.4c7.8,8,12,18.5,11.9,29.7 c-0.4,22.4-19.3,40.6-42.1,40.6H59.4c-16,0-31.1,6.3-42.3,17.7C6.8,171.5,0.9,185,0.2,199.5h18c0.7-9.8,4.8-18.8,11.7-25.9 c7.8-8,18.3-12.4,29.5-12.4h39.2c32.6,0,59.6-26.2,60.1-58.3c0.3-16-5.8-31.2-17-42.6c-11.2-11.4-26.3-17.7-42.3-17.7H60.2 C37.3,42.6,18.4,24.4,18.1,2c0-0.7,0-1.3,0-2L0,0L0,0z" style="fill:none;stroke:#3fa9f5;stroke-miterlimit:10;stroke-width:5px"/></svg>');

    /*<svg version="1.1" class="svg_path_01" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 158.7 199.5" style="enable-background:new 0 0 158.7 199.5;" xml:space="preserve"><path d="M0,0c0,0.8,0,1.5,0,2.3c0.5,32.2,27.5,58.3,60.1,58.3h39.2c11.2,0,21.6,4.4,29.5,12.4c7.8,8,12,18.5,11.9,29.7 c-0.4,22.4-19.3,40.6-42.1,40.6H59.4c-16,0-31.1,6.3-42.3,17.7C6.8,171.5,0.9,185,0.2,199.5h18c0.7-9.8,4.8-18.8,11.7-25.9 c7.8-8,18.3-12.4,29.5-12.4h39.2c32.6,0,59.6-26.2,60.1-58.3c0.3-16-5.8-31.2-17-42.6c-11.2-11.4-26.3-17.7-42.3-17.7H60.2 C37.3,42.6,18.4,24.4,18.1,2c0-0.7,0-1.3,0-2L0,0L0,0z" /></svg>

    <svg  class="svgPipe1" xmlns="http://www.w3.org/2000/svg" data-name="Layer 1" viewBox="0 0 57 136"><title>line-01</title><path  d="M53,134V41s0-6-7-6c-6,0-6,6-6,6V77s1,6-6,6c-6,0-6-6-6-6V11s0-6-6-6-6,5-6,5V46s0,6-6,6-6-5-6-5V17" style="fill:none;stroke:#3fa9f5;stroke-miterlimit:10;stroke-width:5px"/></svg>*/



    $('.svgCon1').append(svgOpt_01);
    $('.svgCon2').append(svgOpt_02);
    var kutePipe2 = KUTE.fromTo('.svg_path_01 path', { draw: '0% 0%' }, { draw: '0% 100%' }, { duration:2000 });
    var kutePipe3 = KUTE.fromTo('.svg_path_02 path', { draw: '0% 0%' }, { draw: '0% 100%' }, { duration:2000 });
    //kutePipe2.start();
    
    var tl = new TimelineLite();
    tl.call(function () {
        kutePipe2.start();
        kutePipe3.start();
    })
});