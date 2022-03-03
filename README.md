<p align="center">
<a href="https://teardowngame.com/" target="_blank">
<img src="https://teardowngame.com/logo.png" alt="Teardown Logo">
</a>
</p>

## Unofficial Teardown NVENC Screen Recorder

After installing the Teardown beta on Steam it was apparent how slow FFMPEG CPU encoding is, So I set out to find the correct hardware acceleration commands that would meet the quality that is provided by the default script while maintaining an overall fast experience.

## Downloads

You can find the default script provided by Tuxedo Labs along with the NVENC script and Linux variants in links below, they can also be found in the scripts folder.

[[Windows - GPU](https://github.com/Joshua-Noakes1/Teardown-nvenc/blob/main/scripts/makemovie.gpu.bat)] [[Linux - GPU](https://github.com/Joshua-Noakes1/Teardown-nvenc/blob/main/scripts/makemovie.gpu.sh)]

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

## Results

If you're just here for the results look no further the table below explains where the result came from, how fast the encode was and the final size of the video.

All tests used the same 1,171 images in a resolution of 4096 x 2160, they can be found [here](https://drive.google.com/drive/folders/1XXnlwIHAZtEiPHGRm2KGpeXE4TnaujHQ?usp=sharing) on Google Drive in the "[_capture.zip_](https://drive.google.com/file/d/12zOgIjnrMKXSaQHkm2yi_wz5wPzsnlfk/view?usp=sharing)" archive, the accompanying videos can also be found in the same folder.

## PC1 - AMD Ryzen 3700X | Gigabyte GeForce RTX™ 3070 8G

| Encode Type   | Encode Time        | Encode Speed Avg. | Final File Size | Evidence (YouTube - Google Drive)                                                                                                                | File Name                   |
| ------------- | ------------------ | ----------------- | --------------- | ------------------------------------------------------------------------------------------------------------------------------------------------ | --------------------------- |
| CPU - libx264 | 1 Minute 8 Seconds | x0.3              | 71.5 MB         | [[YouTube](https://youtu.be/rNQ4hjx6MDM)] - [[Google Drive](https://drive.google.com/file/d/1q3vK1EDDXBS0-yS53FFV2x1ccVt0ZQMj/view?usp=sharing)] | 2022-03-03-16-29-51-cpu.mp4 |
| GPU - cuda    | 12 Seconds         | x1.7              | 81.5 MB         | [[YouTube](https://youtu.be/0ya-mGVRspw)] - [[Google Drive](https://drive.google.com/file/d/1boa75SQlgZpo9Sd5TcfZAfcRoKIdCyC0/view?usp=sharing)] | 2022-03-03-16-32-27-gpu.mp4 |

[![https://github.com/Joshua-Noakes1/Teardown-nvenc/raw/main/.github/images/0584.jpg](https://github.com/Joshua-Noakes1/Teardown-nvenc/raw/main/.github/images/0584.jpg)](https://drive.google.com/drive/folders/1XXnlwIHAZtEiPHGRm2KGpeXE4TnaujHQ?usp=sharing)

## PC2 - AMD Ryzen 1500X | Gigabyte GeForce® 1660 Ti 6G

| Encode Type   | Encode Time         | Encode Speed Avg. | Final File Size | Evidence (YouTube - Google Drive)                                                                                                                | File Name                   |
| ------------- | ------------------- | ----------------- | --------------- | ------------------------------------------------------------------------------------------------------------------------------------------------ | --------------------------- |
| CPU - libx264 | 2 Minutes 3 Seconds | x0.1              | 73.2 MB         | [[YouTube](https://youtu.be/wBNEmATOvTk)] - [[Google Drive](https://drive.google.com/file/d/1H-wC0LKWJS6se0VJfO93POBirejsWqbg/view?usp=sharing)] | 2022-03-03-16-41-54-cpu.mp4 |
| GPU - cuda    | 16 Seconds          | x1.6              | 85.9 MB         | [[YouTube](https://youtu.be/hyv076qcGPw)] - [[Google Drive](https://drive.google.com/file/d/1-I2Z5avWn0U919AbRsWMDErpqMGcfexM/view?usp=sharing)] | 2022-03-03-16-45-55-gpu.mp4 |

[![https://github.com/Joshua-Noakes1/Teardown-nvenc/raw/main/.github/images/1059.jpg](https://github.com/Joshua-Noakes1/Teardown-nvenc/raw/main/.github/images/1059.jpg)](https://drive.google.com/drive/folders/1XXnlwIHAZtEiPHGRm2KGpeXE4TnaujHQ?usp=sharing)
