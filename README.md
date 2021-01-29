# [Towards Social Artificial Intelligence: Nonverbal Social Signal Prediction in A Triadic Interaction (CVPR 2019 Oral)](http://domedb.perception.cs.cmu.edu/ssp.html)

![Teaser Image](https://github.com/jhugestar/jhugestar.github.io/blob/master/img/cvpr19_ssp.gif)

Current version provides: 
- Haggling dataset from [Panoptic Studio](http://domedb.perception.cs.cmu.edu/index.html)
- Visualization code

## Requirements
- Python 3
- PyOpenGL
- freeglut (use `sudo apt-get install freeglut3-dev` for ubuntu users)

## Download Processed Haggling Data

- Run the following script to download processed haggling dataset (4.7GB)
```
sh ./scripts/download_haggling.sh
```
- Each pkl file has information for each haggling game including 3D body, 3D face, 3D hand, speaking annotation for all three people
- Speaking status annotation is in a binary form (0 or 1)

## Training/Testing Split
- The following sequences are testing set:
```
'170221_haggling_b1','170221_haggling_b2','170221_haggling_b3','170228_haggling_b1','170228_haggling_b2','170228_haggling_b3'
```
- All others are training set
- No subject appears in both training and testing set. They are completely seperate


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
@inproceedings{joo2019ssp,
  title={Towards Social Artificial Intelligence: Nonverbal Social Signal Prediction in A Triadic Interaction},
  author={Joo, Hanbyul and Simon, Tomas and Cikara, Mina and Sheikh, Yaser},
  booktitle={CVPR},
  year={2019}
}
```


## License
[CC-BY-NC 4.0](https://creativecommons.org/licenses/by-nc/4.0/legalcode).
