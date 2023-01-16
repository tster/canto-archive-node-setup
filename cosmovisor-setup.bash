# Create Cosmovisor Folders
mkdir -p ~/.cantod/cosmovisor/genesis/bin
mkdir -p ~/.cantod/cosmovisor/upgrades


# Load Node Binary into Cosmovisor Folder
cp /usr/bin/cantod ~/.cantod/cosmovisor/genesis/bin

# Prep upgraded binaries

cd ~/Canto
git checkout v2.0.0
make install

mkdir -p ~/.cantod/cosmovisor/upgrades/v2.0.0/bin

cp ~/go/bin/cantod ~/.cantod/cosmovisor/upgrades/v2.0.0/bin

cd ~/Canto
git checkout v3.0.0
make install

mkdir -p ~/.cantod/cosmovisor/upgrades/v3.0.0/bin

cp ~/go/bin/cantod ~/.cantod/cosmovisor/upgrades/v3.0.0/bin

cd ~/Canto
git checkout v4.0.0
make install

mkdir -p ~/.cantod/cosmovisor/upgrades/v4.0.0/bin

cp ~/go/bin/cantod ~/.cantod/cosmovisor/upgrades/v4.0.0/bin
