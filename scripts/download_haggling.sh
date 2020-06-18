set -ex

#About 4.7GB in total

mkdir -p data
cd data
mkdir -p haggling
cd haggling
wget "domedb.perception.cs.cmu.edu/panopticDB/ssp/panopticDB_speech_pkl_hagglingProcessed.zip" 
wget "domedb.perception.cs.cmu.edu/panopticDB/ssp/panopticDB_body_pkl_hagglingProcessed.zip" 
wget "domedb.perception.cs.cmu.edu/panopticDB/ssp/panopticDB_face_pkl_hagglingProcessed.zip" 
wget "domedb.perception.cs.cmu.edu/panopticDB/ssp/panopticDB_hand_pkl_hagglingProcessed.zip" 

unzip panopticDB_speech_pkl_hagglingProcessed.zip
unzip panopticDB_body_pkl_hagglingProcessed.zip
unzip panopticDB_face_pkl_hagglingProcessed.zip
unzip panopticDB_hand_pkl_hagglingProcessed.zip
cd ../..