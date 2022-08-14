1. Clone this repository
2. Make sure you have `docker ^20.10.17` and `make`, or `yarn 1` installed locally
3. 
    If using `docker` run:
   - `make`
   - `make run`
4. execute `yarn`
5. Observe the warning message:
    ```
    Pattern ["html-webpack-plugin@^5.5.0"] is trying to unpack in the same destination "/home/node/.cache/yarn/v6/npm-html-webpack-plugin-5-5.5.0-c3911936f57681c1f9f4d8b68c158cd9dfe52f50-integrity/node_modules/html-webpack-plugin-5" as pattern ["html-webpack-plugin-5@npm:html-webpack-plugin@^5"]. This could result in non-deterministic behavior, skipping.
   ```
6. Execute `ls -lh node_modules | grep html-webpack-plugin`

You will see `html-webpack-plugin-4` and `html-webpack-plugin-5` which are used by Cypress but there is no regular `html-webpack-plugin` as specified in `package.json`