<p align="center">
<a href="https://teardowngame.com/" target="_blank">
<img src="https://teardowngame.com/logo.png" alt="Teardown Logo">
</a>
</p>

## Unofficial Teardown NVENC Screen Recorder

After installing the Teardown beta on Steam it was apparent how slow FFMPEG CPU encoding is, So I set out to find the correct hardware acceleration commands that would meet the quality that is provided by the default script by the Developers TuxedoLabs.

## Hardware

I've tried to test this on a few PCs to see what the performance is like, below are the specs of those machines.
| CPU | RAM | GPU | Storage (Where teardown saved to) |
|-------------------------------------|----------------------|------------------------------------------|------------------------------------|
| AMD Ryzen 3700X 8-Core Processor | 16GBs DDR4 @ 3000MHz | Gigabyte GeForce RTX™ 3070 VISIONS OC 8G | Seagate ST4000VX077 4TB Hard Drive |
| AMD Ryzen 1500X Quad-Core Processor | 16GBs DDR4 @ 2133MHz | Gigabyte GeForce® 1660 Ti OC 6G | Samsung 850 EVO 250GB SSD |

## Examples

All tests used the same 1,171 images in a resolution of 4096 x 2160, they can be found [here on Google Drive](https://drive.google.com/drive/folders/1XXnlwIHAZtEiPHGRm2KGpeXE4TnaujHQ?usp=sharing) in the ["_capture.zip_"](https://drive.google.com/file/d/12zOgIjnrMKXSaQHkm2yi_wz5wPzsnlfk/view?usp=sharing) the accompanying videos can also be found in the same folder.

### PC1

- Using the CPU this video took 1 minute and 5 seconds to encode at an average speed of x0.2, it had an output file size of 71.5 MB.  
   [[YouTube](https://youtu.be/lnOLVdUtck8)] - [[Google Drive](https://drive.google.com/file/d/1CzYjvY4UNbERUe4Mwu1OnjNitXqgQ7XF/view?usp=sharing)]  
   _2022-03-02-19-37-13-cpu.mp4_

- Using the GPU this video took 37 seconds to encode at an average speed of x0.5, it had an output file size of 18.1 MB.  
  [[YouTube](https://youtu.be/cJIySBOwInc)] - [[Google Drive](https://drive.google.com/file/d/1A2CH7CRyFTSpkQlXVJId_puwsiB_HMTU/view?usp=sharing)]  
  _2022-03-02-20-20-16-gpu.mp4_
