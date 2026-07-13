tasks=""
#for task in "mp_is_metal"; do
#for task in "jdft2d" "mp_is_metal"; do
for task in "jdft2d"; do
  #bash preprocess_matbench.sh $task
  bash evaluate_our_finetune.sh $task
  tasks+=" matbench_$task"
done

bash compile.sh $tasks
