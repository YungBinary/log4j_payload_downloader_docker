# log4j_payload_downloader Docker Container

Docker container for the project hosted at https://github.com/djt78/log4j_payload_downloader.
All credits go to the original author(s).

Getting Started:

1. git clone https://github.com/YungBinary/log4j_payload_downloader_docker.git

2. cd log4j_payload_downloader_docker

3. Build the docker image:
    ```sh
    docker build . -t get-payloads
    ```

4. Run the docker image:
    ```sh
    docker run -it get-payloads
    ```

5. Once finished, use the following command to find the exited container ID:
    ```sh
    docker ps -a
    ```

6. Copy the downloaded directory from the container to the current directory on the host machine:
    ```sh
    docker cp <CONTAINER_ID>:/opt/log4j_payload_downloader/downloaded .
    ```

## License

See https://github.com/djt78/log4j_payload_downloader/blob/main/LICENSE
