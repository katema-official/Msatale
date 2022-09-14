//quando il nemico viene distrutto, salvo il suo id nella lista morti,
//così quando riaccedo alla stanza so che lui non deve esserci
persistent_system = instance_find(obj_level_2_transition_system,0);
ds_list_add(persistent_system.list_dead_enemies,id);



