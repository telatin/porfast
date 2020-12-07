# porfast
**⚡ pORFast** - Paired-end ORF Fast extraction ![Version](https://anaconda.org/bioconda/porfast/badges/version.svg) ![Downloads](https://anaconda.org/bioconda/porfast/badges/downloads.svg)

![ORF Finder Logo](docs/logo_small.png)  

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

## Installation

### Linux

* Installation via BioConda:
```bash
conda install -c bioconda porfast
```
* Download a pre-compiled binary:
```
wget https://github.com/telatin/porfast/releases/download/v0.8.0/porfast_linux
```

### macOS

* Download a pre-compiled library: 
```
curl -O ~/porfast https://github.com/telatin/porfast/releases/download/v0.8.0/porfast_osx
```  
If necessary, replace `~/porfast` with a destination available in your `$PATH`.

## Manual installation (compiling from source)

Note that Bioconda installation is coming soon.

1. Install **nim** ([instructions](https://andrea-telatin.gitbook.io/nim-bioinformatics/installing-nim))
1. Clone this repository: `git clone https://github.com/telatin/porfast`
1. Build the binary: `bash build.sh` that will create in the _bin_ directory either _porfast\_linux_ or _porfast\_osx_, depending on the platform used
1. Check that the binary works: `./bin/porfast`


## Example usage

The repository comes with a test dataset in the _reads_ directory
```
./bin/porfast_linux -1 reads/R1.fq.gz -2 reads/R2.fq.gz --min-size 80 | head
```
will produce:
```
>D00200:311:HG3T5BCXY:1:1116:14226:46994_1/1
LWAECVEIGIEARKALLARCKLFRPFIPPVVDGKLWQDYPTSVLASDRRFFSFEPGAKWHGFEGYAADQYFVDPFKLLLTTPG
>D00200:311:HG3T5BCXY:1:1204:12081:27801_1/2
CKLLPFCVALALTGCSLAPDYQRPAMPVPQQFSLSQNGLVNAADNYQNAGWRTFFVDNQVKTLISEALVNNRDLRMATLKVQ
>D00200:311:HG3T5BCXY:1:1204:12081:27801_2/2
SRYSRIARATCGGNMKLLIVEDEKKTGEYLTKGLTEAGFVVDLADNGLNGYHLAMTGDYDLIILDIMLPDVNGWDIVRMLR
>D00200:315:HG3F5BCXY:1:1105:16316:63851_1/1
YNVFNNSSRKEILIMTKYIAHIEPLNAEKIGTKAHGTATFEEKGDELHIHVEMFDTPANIEHWEHFHGFPNGQKAHVPTAA
>D00200:315:HG3F5BCXY:1:1105:8757:70971_1/3
SQTKKDIYDAMQGLEYEINTMFSSQGQTPFTTLGFGLGTSWIEKEIQKDILRIRIKGLGRERRTAIFPKLVFTIKKGLNLHP
```
