# Trim low-quality ends from reads in addition to adapter removal. For RRBS samples, 
# quality trimming will be performed first, and adapter trimming is carried in a 
# second round. Other files are quality and adapter trimmed in a single pass. The 
# algorithm is the same as the one used by BWA (Subtract INT from all qualities; compute 
# partial sums from all indices to the end of the sequence; cut sequence at the index at 
# which the sum is minimal). Default Phred score: 20.
QUALITY= 25
