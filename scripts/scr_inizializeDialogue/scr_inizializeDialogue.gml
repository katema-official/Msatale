function scr_inizializeDialogue() {
	padding = 50; //padding tra l'asse x e la finestra

	//proprietà del box di dialogo BIANCO
	width = window_get_width() - (padding*2);
	height = 200;
	xOrigin = padding;
	yOrigin = 10;

	//proprietà del box di dialogo NERO
	borderSize = 20;
	innerBoxWidth = width - borderSize;
	innerBoxHeight = height - borderSize;
	innerBox_xOrigin = xOrigin + (borderSize/2);
	innerBox_yOrigin = yOrigin + (borderSize/2);

	avatarScale = 2;
	avatar_xOrigin = innerBox_xOrigin + 15;
	avatar_yOrigin = innerBox_yOrigin + 20;
	text_xOrigin = avatar_xOrigin + 150;
	text_yOrigin = innerBox_yOrigin + 25;

	for(i=0;i<100;i++){
		dialog[i, 0] = -1; //sprite index
		dialog[i, 1] = ""; //dialogo corrente
	}

	active = false;
	convoDialogCount=0;
	convoIndex = 0;
	spriteToDisplay = -1;
	stringToDisplay = "";
	currCharIndex = 1;







}
