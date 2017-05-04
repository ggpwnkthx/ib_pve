# Infiniband on Proxmox

Use the one-liner below to download and run the installer.
```bash
wget https://raw.githubusercontent.com/ggpwnkthx/ib_pve/master/install.sh -O - | sh -
```

If you ever update Proxmox, you Infiniband drivers will fail. You can easily recompile the DKMS modules with the following command:
```bash
dkms install --all
```

CAUTION: DO NOT RUN REMOTE COMMANDS THAT YOU DON'T TRUST. READ THROUGH THE FILE YOU'RE DOWNLOADING BEFORE RUNNING IT. THAT'S JUST COMMON SENSE.
