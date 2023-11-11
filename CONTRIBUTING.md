# kube-mate

## Contributing resources:

### Guide:

## Creating a virtual cluster using kind or k3d:

~~(i can't seem to be successful with k3d on my work laptop, we'll see if i can get it working here. key references: https://k3d.io/v5.6.0/usage/advanced/podman/)~~

~~1. Install k3d: `brew install k3d`~~
~~2. start a podman machine (running fedora coreos by default :)) `podman machine init`~~
~~3. start the newly initialized podman vm `podman machine start`~~

nvm, that didn't work at all, [kind](https://kind.sigs.k8s.io/) seems like the way to go for now
1. `brew install kind`

## Creating the baremetal linux host (k8s node):

### (fedora) Core OS
(this guide is for physical (bare metal) hardware only, I don't think it will apply outside of this situation, but the gist can be followed)

starting w/ the thumb drive iso:

1. get fedora coreos-installer: https://coreos.github.io/coreos-installer/getting-started/
    - I'm comfortable with installing this from cargo, so `cargo install coreos-installer`, your command may differ
    
    - Create a customized installation: https://docs.fedoraproject.org/en-US/fedora-coreos/bare-metal/#_customizing_installation
        - let's use a usb stick, so stick with the iso version, no need for pxe unless you're capable of doing the infra work for pxe booting
        - two options are available:
        ```
        coreos-installer iso ignition embed -i  install.ign fedora-coreos-38.20231014.3.0-live.x86_64.iso
        ```
        
        ^[install.ign](./nodes/ignition/install.ign)

        or
        ```
        coreos-installer iso customize \
            --dest-device /dev/sda \
            --dest-ignition guado.ign \
            --ignition-ca ca.pem \
            --post-install post.sh \
            -o custom.iso input.iso
        ```

        ^[guado.ign](./nodes/ignition/guado.ign)

2. write isos to thumb drive
3. boot isos in read-to-provision hardware
4. wait for install to finish, you now have a fcos box with your ssh keys and user installed, along with disks configured to be reused.

### k3s setup

1. install [k3sup](https://github.com/alexellis/k3sup) on your local machine (where you're doing the operating)
    - 


fin. join the [chat](https://chat.cyberia.club/#/room/#kubernauts:cyberia.club)

## Utilizing resources:

## Infrastructure List:

| hardware                      | kubernetes info  | OS    | firmware |
|-------------------------------|------------------|-------|----------|
| fack's CN62 chromeboxes (x3)  | k3s v1.27.6+k3s1 | fcos  | coreboot |

## Troubleshooting:

## FAQs: