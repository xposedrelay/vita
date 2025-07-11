# ![Vita isotipe](files/system/usr/share/pixmaps/gdm-watermark.png) &nbsp; [![bluebuild build badge](https://github.com/cr3ativec0mmons/vita/actions/workflows/build.yml/badge.svg)](https://github.com/cr3ativec0mmons/vita/actions/workflows/build.yml)

This is my custom Bluefin image created with bluebuild tool. :3
Use it if you like and if it fits your needs. Hope you like it and see you later. ;D 

## Installation

> **Warning**  
> [This is an experimental feature](https://www.fedoraproject.org/wiki/Changes/OstreeNativeContainerStable), try at your own discretion.

To rebase an existing atomic Fedora installation to the latest build:

- First rebase to the unsigned image, to get the proper signing keys and policies installed:
  ```
  rpm-ostree rebase ostree-unverified-registry:ghcr.io/cr3ativec0mmons/vita-dx:latest
  ```
- Reboot to complete the rebase:
  ```
  systemctl reboot
  ```
- Then rebase to the signed image, like so:
  ```
  rpm-ostree rebase ostree-image-signed:docker://ghcr.io/cr3ativec0mmons/vita-dx:latest
  ```
- Reboot again to complete the installation
  ```
  systemctl reboot
  ```

The `latest` tag will automatically point to the latest build. That build will still always use the Fedora version specified in `recipe.yml`, so you won't get accidentally updated to the next major version.

## Verification

These images are signed with [Sigstore](https://www.sigstore.dev/)'s [cosign](https://github.com/sigstore/cosign). You can verify the signature by downloading the `cosign.pub` file from this repo and running the following command:

```bash
cosign verify --key cosign.pub ghcr.io/cr3ativec0mmons/vita-dx
```

## Credits

This is heavily inspired/forked from [mcubi](https://github.com/tecncr/mcubi) <3
