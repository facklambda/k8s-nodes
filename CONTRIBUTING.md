# kube-mate

## Contributing resources:

### Guide:

## Creating the linux host (k8s node):

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

2. 


1. start with a linux host
2. install k3s
3. add tokens
4. ensure network connectivity
5. join the [chat](https://chat.cyberia.club/#/room/#kubernauts:cyberia.club)

## Utilizing resources:

## Infrastructure List:

| hardware                      | kubernetes info  | OS    | firmware |
|-------------------------------|------------------|-------|----------|
| fack's CN62 chromeboxes (x3)  | k3s v1.27.6+k3s1 | fcos  | coreboot |

## Troubleshooting:

## FAQs: