# StopStealingPodcasts
Bash script using FFMPEG to automatically convert audio-only podcasts to a solid video file using a cover image for YouTube

## How to?
- Add the audio files (`.wav`, `.aif` or `.mp3`) to the `/audio/` folder
- Add the images as a `.png` to the `/img/` folder.
- Make sure the images have the same name as the corresponding audio file, (I use 001.mp3 to match with 001.png).
- Install [FFMPEG](https://www.ffmpeg.org/), preferably via [Homebrew](https://brew.sh/).
- run `./audio-to-video.sh` in the root folder.
