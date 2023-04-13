#!/bin/bash
# Set the input folder and command
input_folder="/home/julienh/Desktop/COMP401/COMP401/Proteomes/Drosophila"
output_folder="/home/julienh/Desktop/COMP401/COMP401/Proteomes/Masked_QPH"
command="./fLPS2 -t1e-5 -m5 -m25"
command2="./fLPS2 -d -o long -c equal -rQ -t 0.000001"
command3="./fLPS2 -d -o long -c equal -rQPH -t 0.000001"
command4="./fLPS2 -m5 -M200 -d -o masked -c /home/julienh/Desktop/COMP401/COMP401/flps2/flps2/fLPS2programs/src/drosophila_sequences.fasta.COMPOSITION -rQPH -t1e-15"
command5="./fLPS2 -m5 -M200 -d -o long -c /home/julienh/Desktop/COMP401/COMP401/flps2/flps2/fLPS2programs/src/drosophila_sequences.fasta.COMPOSITION -rQPH -t1e-15"

# Loop through all .txt files in the input folder
for file in "$input_folder"/*.fasta
do
  # set output file name
  echo "$file"
  output_file="$output_folder/$(basename "$file" .fasta).out"
  # Run the command on each file
  $command4 "$file" > "$output_file"
  sleep 10
done

