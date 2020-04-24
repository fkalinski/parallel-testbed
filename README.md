# A reproducible fail test case for MNG-6843.

Just run `mvn clean package -T 1C` and watch it fail.

You can generate more child modules by running `./generate.sh NUMBER_OF_MODULES`
