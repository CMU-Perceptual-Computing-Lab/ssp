# [Towards Social Artificial Intelligence: Nonverbal Social Signal Prediction in A Triadic Interaction (CVPR Oral)](http://domedb.perception.cs.cmu.edu/ssp.html)

![Teaser Image](https://github.com/jhugestar/jhugestar.github.io/blob/master/img/cvpr19_ssp.gif)


Current version provides: 
- Haggling dataset from [Panoptic Studio](http://domedb.perception.cs.cmu.edu/index.html)
- Visualization code
- Testing code

## Requirements
- Python 3
- [PyTorch](https://pytorch.org/) tested on 1.1.0
- cv2
- PyOpenGL
- freeglut (use `sudo apt-get install freeglut3-dev` for ubuntu users)
- ffmpeg

## Download Pre-trained model

Run the following script to download the pretrained model. The checkpoint is saved under `./checkpoints/`.
```
sh ./scripts/download_haggling.sh
```

## Visualization
```
python glViewer.py
```
- mouseLeft: view rotation changes
- mouseRight: zoom changes
- shift+ mouseLeft: view pan
- f: toggle floor drawing

## License
[CC-BY-NC 4.0](https://creativecommons.org/licenses/by-nc/4.0/legalcode).
