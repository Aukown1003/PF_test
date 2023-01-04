  /*global $*/
  /*global raty$*/
  $(document).on('turbolinks:load', function() { //turbolinksをoffに
    let elem = document.querySelector('#post_raty'); //post_ratyは設定したid
    let opt = { //opt(option)として以下を設定
      starOn: "<%= asset_path('star-on.png') %>", //('')内に先程imageフォルダに入れた星の画像へのパスと参照名を記載
      starOff: "<%= asset_path('star-off.png') %>", //app/assets/imagesを参照している状態
      starHalf: "<%= asset_path('star-half.png') %>", //仮にimages/rate_imagesフォルダを作成し、その中に画像を入れた場合は('rate_images/画像名')と記述
      scoreName: 'book[rating]', ////登録するモデル名とカラム名を記述
      half: false,
    };
    raty(elem,opt);
  });