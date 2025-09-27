FROM wokoman/quake3-osp-server:210424

COPY ./baseq3/ baseq3/
COPY ./lanwarig.cfg osp/lanwarig.cfg

CMD ["/usr/games/quake3-server", "+set", "dedicated", "1", "+set", "fs_game", "osp", "+exec", "lanwarig.cfg"]
