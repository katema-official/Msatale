/// @description fade in
curr.image_alpha=0.01;
curr.start_fade_in=true;
snd = audio_play_sound(Undertale___Gaster_s_Theme,1,false);
audio_sound_gain(snd, 0, 0);
audio_sound_gain(snd, 1, 10000);