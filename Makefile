start:
	echo "hi"

build:
	docker-compose build

up-emacs:
	docker-compose up emacs 

doom-install:
	export PATH=${PATH}:~/.emacs.d/bin && \
		doom install

up:
	docker-compose up

down:
	docker-compose down

down-and-clean:
	docker-compose down --remove-orphans --rmi all --volumes

up-build:
	docker-compose up --build

launch-emacs-shell:
	docker-compose run emacs /bin/bash

set_format:
	export FORMAT="\nID\t{{.ID}}\nIMAGE\t{{.Image}}\nCOMMAND\t{{.Command}}\nCREATED\t{{.RunningFor}}\nSTATUS\t{{.Status}}\nPORTS\t{{.Ports}}\nNAMES\t{{.Names}}\n"

use_format:
	docker container ls --format=$FORMAT
	docker ps --format=$FORMAT

attach-emacs-shell:
	docker-compose exec emacs /bin/bash

attach-run-shell:
	docker-compose run emacs /bin/bash

download-doom-emacs:
	git clone --depth 1 https://github.com/doomemacs/doomemacs

update-doom-emacs:
	cd doomemacs && \
	  git fetch; git pull;

attach-emacs-shell:
	# https://docs.docker.com/engine/reference/commandline/compose_exec/
	docker-compose exec emacs /bin/bash

top-emacs-shell:
	# https://docs.docker.com/engine/reference/commandline/compose_top/
	docker-compose top emacs

events:
	# https://docs.docker.com/engine/reference/commandline/compose_events/
	docker-compose events emacs

logs:
	# https://docs.docker.com/engine/reference/commandline/compose_logs/
	docker-compose logs emacs -t --since 1m

logs-tail:
	# https://docs.docker.com/engine/reference/commandline/compose_logs/
	docker-compose logs emacs --follow -t --since 1m
images:
	# https://docs.docker.com/engine/reference/commandline/compose_images/
	docker-compose images
ps:
	# https://docs.docker.com/engine/reference/commandline/compose_ps/
	docker-compose ps --all
pause:
	# https://docs.docker.com/engine/reference/commandline/compose_pause/
	docker-compose pause emacs
unpause:
	# https://docs.docker.com/engine/reference/commandline/compose_unpause/
	docker-compose unpause emacs
