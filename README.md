A Docker image of [glua-api-snippets](https://github.com/Ethorbit/glua-api-snippets)

Example: 

```
docker run -it --rm \
    -v ./output:/output \
    ethorbit/glua-api-snippets:fork \
    npx tsx ./src/cli-scraper.ts --output /output/gmod-wiki
```
