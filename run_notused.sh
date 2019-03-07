#image_dir=/home/vcla/Sites/vtt/demo/static/data/new/oriFrameFolder/auditorium_hc3_bbox_v1
#results_dir=/home/vcla/Sites/vtt/demo/static/data/new/oriPoseFolder/auditorium_hc3_bbox_v1/POSE
#render_dir=/home/vcla/Sites/vtt/demo/static/data/new/dstPoseFolder/auditorium_hc3_bbox_v1
#python tracker-general.py --imgdir ${image_dir} \
#                          --in_json ${results_dir}/alpha-pose-results.json \
#                          --out_json ${results_dir}/alpha-pose-results-forvis-tracked.json \
#                          --visdir ${render_dir} 

#image_dir=/home/vcla/Sites/vtt/demo/static/data/new/oriFrameFolder/auditorium_hc4_bbox_v1
#results_dir=/home/vcla/Sites/vtt/demo/static/data/new/oriPoseFolder/auditorium_hc4_bbox_v1/POSE
#render_dir=/home/vcla/Sites/vtt/demo/static/data/new/dstPoseFolder/auditorium_hc4_bbox_v1
#python tracker-general.py --imgdir ${image_dir} \
#                          --in_json ${results_dir}/alpha-pose-results.json \
#                          --out_json ${results_dir}/alpha-pose-results-forvis-tracked.json \
#                          --visdir ${render_dir}

#image_dir=/home/vcla/Sites/vtt/demo/static/data/new/oriFrameFolder/garden_hc2_bbox_v1
#results_dir=/home/vcla/Sites/vtt/demo/static/data/new/oriPoseFolder/garden_hc2_bbox_v1/POSE
#render_dir=/home/vcla/Sites/vtt/demo/static/data/new/dstPoseFolder/garden_hc2_bbox_v1
#python tracker-general.py --imgdir ${image_dir} \
#                          --in_json ${results_dir}/alpha-pose-results.json \
#                          --out_json ${results_dir}/alpha-pose-results-forvis-tracked.json \
#                          --visdir ${render_dir}

#image_dir=/home/vcla/Sites/vtt/demo/static/data/new/oriFrameFolder/garden_contour2_bbox_v1
#results_dir=/home/vcla/Sites/vtt/demo/static/data/new/oriPoseFolder/garden_contour2_bbox_v1/POSE
#render_dir=/home/vcla/Sites/vtt/demo/static/data/new/dstPoseFolder/garden_countour2_bbox_v1
#python tracker-general.py --imgdir ${image_dir} \
#                          --in_json ${results_dir}/alpha-pose-results.json \
#                          --out_json ${results_dir}/alpha-pose-results-forvis-tracked.json \
#                          --visdir ${render_dir}

#image_dir=/home/vcla/Sites/vtt/demo/static/data/new/oriFrameFolder/office_cr1_bbox_v1
#results_dir=/home/vcla/Sites/vtt/demo/static/data/new/oriPoseFolder/office_cr1_bbox_v1/POSE
#render_dir=/home/vcla/Sites/vtt/demo/static/data/new/dstPoseFolder/office_cr1_bbox_v1
#python tracker-general.py --imgdir ${image_dir}  \
#                          --in_json ${results_dir}/alpha-pose-results.json \
#                          --out_json ${results_dir}/alpha-pose-results-forvis-tracked.json \
#                          --visdir ${render_dir}


sceneNames=('walk-dog_view-GL4' 'walk-dog_view-GL1' 'freesbee-two-persons_view-GL5' 'two-people-walking_view-GL3' 'taking-out-freesbee_view-C1' 'seating_view-IP5')

for ((i=0;i<${#sceneNames[@]};i++)) do {
    image_dir=/home/vcla/Sites/vtt/demo/static/data/new/oriFrameFolder/${sceneNames[i]}
    results_dir=/home/vcla/Sites/vtt/demo/static/data/new/oriPoseFolder/${sceneNames[i]}/POSE
    render_dir=/home/vcla/Sites/vtt/demo/static/data/new/dstPoseFolder/${sceneNames[i]}
    python tracker-general.py --imgdir ${image_dir} \
                              --in_json ${results_dir}/alpha-pose-results.json \
                              --out_json ${results_dir}/alpha-pose-results-forvis-tracked.json \
                              --visdir ${render_dir}
    }&
done
wait








