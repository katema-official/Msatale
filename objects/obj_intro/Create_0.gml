inst = instance_create_layer(x,y,"Instances",obj_dialogue_narration);
inst.message[0] = "£0Molto tempo fa (circa 6 anni), due ragazzi si conobbero su Youtube: KATEMA e VENTODIVINO.";
inst.message[1] = "Nove mesi dopo, i due si incontrarono di persona alla fiera Mugello Comics.";
inst.message[2] = "Da allora la loro amicizia si è sempre più consolidata grazie a chat giornaliere e collab.";
inst.message[3] = "Un giorno, in preda alla noia, Katema partorì un video insolito: mistavoannioando.mp4.";
inst.message[4] = "Il video, nato come parodia dei suoi studi, ben presto divenne una saga.";
inst.message[5] = "Altri elementi si aggiunsero alla msa Saga, provenienti dai meme comuni a lui e Ven.";
inst.message[6] = "Nel terzo capitolo, a seguito di uno scontro leggendario, solo Ven sopravvisse.";
inst.message[7] = "Data la sparizione di Katema, era ora compito di Ventodivino concludere la quadrilogia.";
inst.message[8] = "Ma questi, pur avendo il copione pronto, non si metteva mai a editare il video.";
inst.message[9] = "Tuttavia, la presenza di Katema in una dimensione alternativa ebbe effetti imprevedibili.";
inst.message[10] = "Il suo desiderio di tornare a casa si unì con le esperienze che lo avevano portato lì."
inst.message[11] = "E senza volerlo, Katema creò un Universo Alternativo, nato con un solo scopo:";
inst.message[12] = "Far finire a Ventodivino la msa Saga.";

audio_play_sound(Undertale_OST_001___Once_Upon_A_Time,1,false);

inst.audio_enabled=true;
inst.audio_dialogue_0 = snd_generic_text_noise;
inst.delay = 3;
inst.sprite_above = spr_intro_1;
inst.image_above_index = 0;

inst.timeline_index = tml_intro;
inst.timeline_position = 0;
inst.timeline_running = true;

fade_exists = false;
/*

var inst = instance_create_layer(x,y,"Instances",obj_dialogue_narration);
inst.message[0] = "£0Molto tempo fa (circa 6 anni), due ragazzi si conobbero su Youtube: KATEMA e VENTODIVINO."
inst.message[1] = "i vincitori rinchiusero i mostri nel sottosuolo con un incantesimo";
inst.audio_enabled=true;
inst.audio_dialogue_0 = snd_generic_text_noise;
inst.delay = 3;
inst.sprite_above = spr_intro_1;
inst.image_above_index = 0;

*/