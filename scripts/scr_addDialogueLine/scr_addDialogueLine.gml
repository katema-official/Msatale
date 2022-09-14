/// @description aggiungi un dialogo al nostro dialog Array
/// @param sprite_index
/// @param string_text
function scr_addDialogueLine(argument0, argument1) {

	dialog[convoDialogCount, 0] = argument0;
	dialog[convoDialogCount++, 1] = argument1;


}
