input_file=/scratch/bash_course/lecture_4/retake/genomes.txt

1> SAindex_log.txt

output_directory=final_assignment_anouk  

source $(dirname $(dirname $(which mamba)))/etc/profile.d/conda.sh 
conda activate alignment2

for line in $(cat $input_file); do
nice genomepy install $line
nice STAR --runMode genomeGenerate --genomeFastaFiles .local/share/genomes/$line/$line.fa --genomeDir $output_directory/$line
>> SAindex_log.txt;
done

echo  Anouk van den Elzen 
 










