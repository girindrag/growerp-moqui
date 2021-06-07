# GrowERP Moqui backend

This is the backend to the flutter frontend at: https://github.com/growerp/growerp

- to run locally:
```
git clone https://github.com/growerp/moqui-framework.git moqui && cd moqui
git clone https://github.com/growerp/moqui-runtime runtime
git clone https://github.com/growerp/growerp-moqui.git runtime/component/growerp
git clone https://github.com/growerp/PopCommerce.git runtime/component/PopCommerce
git clone https://github.com/growerp/mantle-udm.git -b growerp runtime/component/mantle-udm
git clone https://github.com/growerp/mantle-usl.git runtime/component/mantle-usl
git clone https://github.com/growerp/SimpleScreens.git runtime/component/SimpleScreens
git clone https://github.com/growerp/moqui-fop.git runtime/component/moqui-fop
./gradlew build
java -jar moqui.war load types=seed,seed-initial,install
java -jar moqui.war
```

In a different terminal:
```
git clone https://github.com/growerp/growerp/master admin
cd admin
flutter run
```
create your first company!
