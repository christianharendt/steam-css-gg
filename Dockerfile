FROM foxylion/steam-css:latest

# Add Gungame Mod
RUN wget -O /tmp/sourcemod-plugin-gungame.zip https://github.com/altexdim/sourcemod-plugin-gungame/archive/master.zip && \
    unzip /tmp/sourcemod-plugin-gungame.zip -d /tmp/ && \
    cp -r /tmp/sourcemod-plugin-gungame-master/* /home/steam/css/cstrike/ && \
    rm -rf /tmp/sourcemod-plugin-gungame.zip /tmp/sourcemod-plugin-gungame-master
    
# Add Deathmatch Mod
COPY --chown=steam:steam mods/ /temp
RUN cd /home/steam/css/cstrike && \
    unzip -o /temp/sm_ggdm-1.8.0.zip && \
    rm /temp/*
