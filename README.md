# [Towards Social Artificial Intelligence: Nonverbal Social Signal Prediction in A Triadic Interaction (CVPR 2019 Oral)](http://domedb.perception.cs.cmu.edu/ssp.html)

![Teaser Image](https://github.com/jhugestar/jhugestar.github.io/blob/master/img/cvpr19_ssp.gif)

Current version provides: 
- Haggling dataset from [Panoptic Studio](http://domedb.perception.cs.cmu.edu/index.html)
- Visualization code

## Requirements
- Python 3
- PyOpenGL
- freeglut (use `sudo apt-get install freeglut3-dev` for ubuntu users)

## Download Pre-trained model

- Run the following script to download processed haggling dataset (4.7GB)
```
sh ./scripts/download_haggling.sh
```
- Each pkl file has information for each haggling game, with seller/buyer and winner/loser information
- This data should contain 3D body, 3D face, 3D hand, speaking annotation
- Speaking status annotation is in a binary form (0 or 1)

## Download Raw Data (with HD videos)

- Use [Panoptic-toolbox](https://github.com/CMU-Perceptual-Computing-Lab/panoptic-toolbox) 
- In panoptic-toolbox, check script of [script/getDB_haggling](https://github.com/CMU-Perceptual-Computing-Lab/panoptic-toolbox/blob/master/scripts/getDB_haggling.sh), and set the HD video numbers (between 1-31) you want to download
```
# $curPath/getData.sh 170221_haggling_b1 (vga_video_num)  (hd_video_num)
# For example, if you want to get all 3D videos, set 31 as follows 
$curPath/getData.sh 170221_haggling_b1 0 31
```
- Run the following script in panoptic-toolbox
```
sh ./script/getDB_haggling.sh
```
- Follow the [Panoptic-DB](https://github.com/CMU-Perceptual-Computing-Lab/panoptic-toolbox) instruction to extract videos to frames. 
- Note that these videos are raw videos, and you need to find corresponding frames for each haggling game. Check the start frame index of each haggling game (included in pkl files)


## Visualization
```
python glViewer.py
```
- mouseLeft: view rotation changes
- mouseRight: zoom changes
- shift+ mouseLeft: view pan
- f: toggle floor drawing

## Citation
```
@inproceedings{joo2019towards,
  title={Towards Social Artificial Intelligence: Nonverbal Social Signal Prediction in A Triadic Interaction},
  author={Joo, Hanbyul and Simon, Tomas and Cikara, Mina and Sheikh, Yaser},
  booktitle={CVPR},
  year={2019}
}
```


## License
[CC-BY-NC 4.0](https://creativecommons.org/licenses/by-nc/4.0/legalcode).
