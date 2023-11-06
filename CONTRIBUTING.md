# kube-mate

## Contributing resources:

### Guide:

## Creating the linux host (k8s node):

### (fedora) Core OS
(this guide is for physical (bare metal) hardware only, I don't think it will apply outside of this situation, but the gist can be followed)
1. create a butane file:
2. create an ignition file
3. get fedora core-installer: https://coreos.github.io/coreos-installer/getting-started/
    3.1. I'm comfortable with installing this from cargo, so `cargo install coreos-installer`, your command may differ
    3.2. Create a customized installation: https://docs.fedoraproject.org/en-US/fedora-coreos/bare-metal/#_customizing_installation
        3.2.1. let's use a usb stick, so stick with the iso version, no need for pxe unless you're capable of doing the infra work for pxe booting
        3.2.2 
        ````
        coreos-installer iso customize \
            --dest-device /dev/sda \
            --dest-ignition common.ign \
            --ignition-ca ca.pem \
            --post-install post.sh \
            -o custom.iso input.iso
        ````
4. 


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