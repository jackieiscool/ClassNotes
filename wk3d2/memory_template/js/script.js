$(document).ready(function(){

  var tiles = $('.tile');
  var num_clicks = 0;
  var selected = [];

  function is_current_selection_a_match() {
    var img1src = selected[0].find('img').attr('src');
    var img2src = selected[1].find('img').attr('src');
    return (img1src == img2src);
  }

  function handle_win() {
    alert('Good Job! You found all the matches in '+num_clicks+' clicks!');
    window.location.href = window.location.href;
  }

  function is_game_over() {
    return ($('.tile.matched').size() == tiles.length)
  }

  function is_two_selected() {
    return (selected.length == 2);
  }

  function increment_click_counter() {
    num_clicks++;
  }

  function activate_tile(tile) {
    tile.addClass('active');
    selected.push(tile);
  }

  function deactivate_tiles() {
    $('.tile.active').removeClass('active');
    selected = [];
  };


 	function handle_click() {
    var tile = $(this);
    if (tile.hasClass('active') || tile.hasClass('matched')) {
      return false;
    }
    if (is_two_selected()) {
      deactivate_tiles(); 
    }
    increment_click_counter();
    activate_tile(tile);
    if (is_two_selected() && is_current_selection_a_match()) {
      $.each(selected, function(index, matched_tile) {
        matched_tile.addClass('matched');
      });
      if (is_game_over()) {
        handle_win();
      }
    }
  }


  $.each(tiles, function(index, tile) {
    var tile = $(tile);
    tile.on('click', handle_click);
  });

});
