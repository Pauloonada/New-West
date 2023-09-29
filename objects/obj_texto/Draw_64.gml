pag_limite = array_length(texto) - 1;

var margem = room_width - sprite_get_width(spr_caixa);

//Desenha a caixa do texto
draw_sprite(spr_caixa, -1, margem / 2, room_height - 160)


//"Digitando" o texto
tamanho_do_texto = string_length(texto[pag]);
if (letra <= tamanho_do_texto){
	palavra = string_copy(texto[pag], 1, letra);
	letra++;
}

//Desenha o texto
draw_set_font(font_cut);
draw_set_halign(fa_left);
draw_text_ext(0 + margem / 2 + 20, room_height - 100 + 10, palavra, 30, room_width - 210);
draw_set_font(-1);

draw_set_font(font_cut);
draw_text_ext((margem / 2 + 20) + 820, room_height - 680, "Aperte 'enter' para ir à próxima área", 20, room_width);