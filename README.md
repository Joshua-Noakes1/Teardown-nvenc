<p align="center">
<a href="https://teardowngame.com/" target="_blank">
<img src="https://teardowngame.com/logo.png" alt="Teardown Logo">
</a>
</p>

## Unofficial Teardown NVENC Screen Recorder

After installing the Teardown beta on Steam it was apparent how slow FFMPEG CPU encoding is, So I set out to find the correct hardware acceleration commands that would meet the quality that is provided by the default script while maintaining an overall quick experience.

## Hardware

I've tried to test this on a few PCs to see what the performance is like, below are the specs of those machines.
| CPU | RAM | GPU | Storage (Where teardown saved the images to) | OS |
|-------------------------------------|----------------------|------------------------------------------|------------------------------------|---|
| AMD Ryzen 3700X 8-Core Processor | 16GBs DDR4 @ 3000MHz | Gigabyte GeForce RTX™ 3070 VISIONS OC 8G | Seagate ST4000VX077 4TB Hard Drive | Windows 10 Enterprise 21H2 |
| AMD Ryzen 1500X Quad-Core Processor | 16GBs DDR4 @ 2133MHz | Gigabyte GeForce® 1660 Ti OC 6G | Samsung 850 EVO 250GB SSD | Windows 10 Enterprise 21H2 |

## Game config

It's unlikely that this would effect anything but below are a list of the Video setting and mods I had enabled at the time.

- Video Settings:
  - Display:
    - Mode: Borderless window
    - Resolution: 4096 x 2160
  - Graphics:
    - Render Scale: 100%
    - Render Quality: High
    - Gamma correction: 1
    - Field of view: 120
    - Depth of field: Enabled
    - Darrel distortion: Enabled
    - Motion blur: Disabled
    - Vertical sync: Every Frame
- Mods:
  - Screen Recorder - [Built in]
  - Artzert's Utilities - [[Steam Workshop](https://steamcommunity.com/sharedfiles/filedetails/?id=2699175590)]
  - REALISTIC NUCLEAR BOMB - [[Steam Workshop](https://steamcommunity.com/sharedfiles/filedetails/?id=2760943967)]

## Examples

All tests used the same 1,171 images in a resolution of 4096 x 2160, they can be found [here on Google Drive](https://drive.google.com/drive/folders/1XXnlwIHAZtEiPHGRm2KGpeXE4TnaujHQ?usp=sharing) in the ["_capture.zip_"](https://drive.google.com/file/d/12zOgIjnrMKXSaQHkm2yi_wz5wPzsnlfk/view?usp=sharing) archive, the accompanying videos can also be found in the same folder.
