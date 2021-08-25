# pict-docker

This repo contains Dockerfile of PICT

- https://github.com/microsoft/pict

# installation

```
make build
```

# help

```
$ make help
docker run --rm -it pict-docker pict
Pairwise Independent Combinatorial Testing

Usage: pict model [options]

Options:
 /o:N    - Order of combinations (default: 2)
 /d:C    - Separator for values  (default: ,)
 /a:C    - Separator for aliases (default: |)
 /n:C    - Negative value prefix (default: ~)
 /e:file - File with seeding rows
 /r[:N]  - Randomize generation, N - seed
 /c      - Case-sensitive model evaluation
 /s      - Show model statistics
make: *** [run] Error 3
```


# sample

```
$ make sample
docker run --rm -it -v /Users/u110/workspace/personal/pict_docker:/workspace pict-docker pict /workspace/samples.txt
条件_麺	条件_濃さ	条件_油
固め	濃いめ	多め
固め	薄め	ふつう
柔らかめ	濃いめ	少なめ
ふつう	濃いめ	ふつう
柔らかめ	ふつう	多め
ふつう	ふつう	少なめ
固め	ふつう	ふつう
ふつう	薄め	多め
固め	薄め	少なめ
柔らかめ	薄め	ふつ
```
