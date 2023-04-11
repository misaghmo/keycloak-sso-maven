# keycloak-sso-maven

Build a Docker image based on Keycloak 21 via Apache Maven. 

Requires JDK 11+.

To build:

```bash
mvn clean package
```

The above command will build the following image:

```bash
oscato/keycloak             21.0      3427e0c7fc3f   5 minutes ago   622MB
```

To run the Docker container:

```bash
mvn docker:run
```

Once the container is running, Keycloak should be available at: https://localhost:8443/admin

The credentials to log into the admin console are: `admin` and `admin`.

Notes:

- The Docker image will import/create an `optile` realm via the `optile.json` file.
- The Docker image will import themes from the `themes/optile` directory.
- Authentication via A&A is not yet handled. 