# porfast
**⚡ pORFast** - Paired-end ORF Fast extraction

## Usage

```
Extract ORFs from Paired-End reads.

Usage:
  porfidus [options] 

Options:
  -1, --R1=R1                FASTQ file, first pair
  -2, --R2=R2                FASTQ file, second pair
  -m, --min-size=MIN_SIZE    Minimum ORF size (aa) (default: 26)
  -p, --prefix=PREFIX        Rename reads using this prefix
  --pool-size=POOL_SIZE      Size of the batch of reads to process per thread (default: 250)
  -v, --verbose              Print verbose info
  -j, --join                 Try joining paired ends
  --min-overlap=MIN_OVERLAP  Minimum PE overlap (default: 12)
  --max-overlap=MAX_OVERLAP  Maximum PE overlap (default: 200)
  --min-identity=MIN_IDENTITY
                             Minimum sequence identity in overlap (default: 0.85)
  -h, --help                 Show this help
```
