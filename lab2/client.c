#include <stdio.h>
#include <stdlib.h>
#include <netinet/in.h>
#include <arpa/inet.h>
#include <unistd.h>
#include <sys/types.h>
#include <sys/socket.h>
#include "wrappers.h"

int main(){
	int fd = Socket(AF_INET, SOCK_STREAM, 0);
	struct sockaddr_in adr = {0};
	adr.sin_family = AF_INET;
	adr.sin_port = htons(34543);
	Inet_pton(AF_INET, "127.0.0.1", &adr.sin_addr);
	Connect(fd, (struct sockaddr *) &adr, sizeof adr);
	write(fd, "Hello\n", 6);

	sleep(3);
	close(fd);
	return 0;

}

