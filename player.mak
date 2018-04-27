APPS = player 

include rules.mak


player: player.c
	$(CC) player.c -o player $(CFLAGS)

