# GrowERP Moqui backend

This is the backend to the flutter frontend at: https://github.com/growerp/growerp

- to run locally:
```
git clone -b growerp https://github.com/growerp/moqui-framework.git moqui && cd moqui
git clone https://github.com/growerp/moqui-runtime runtime
git clone https://github.com/growerp/growerp-moqui.git runtime/component/growerp
git clone -b growerp https://github.com/growerp/PopRestStore.git runtime/component/PopRestStore
git clone -b growerp https://github.com/growerp/mantle-udm.git -b growerp runtime/component/mantle-udm
git clone -b growerp https://github.com/growerp/mantle-usl.git runtime/component/mantle-usl
git clone https://github.com/growerp/mantle-stripe.git runtime/component/mantle-stripe
git clone https://github.com/growerp/moqui-fop.git runtime/component/moqui-fop

./gradlew downloadel
./gradlew build
java -jar moqui.war load types=seed,seed-initial,install
java -jar moqui.war
```

In a different terminal:
```
git clone https://github.com/growerp/growerp
cd growerp/packages/core
flutter pub run build_runner build
cd ../admin
flutter run
```
create your first company!

# Single company operation.

1. create and download a snapshot of the current Moqui database
2. run the following commands to load the snapshot zip file:
    - ./gradlew cleandb
    - java -jar moqui.war load raw location=/full_path_to_zip_file
3.  get seed from growerp
    - java -jar moqui.war load components=growerp types=seed,seed-initial
4. In Growerp all users have a loginId and related company, every company has a contact person.
    This job will create loginId's with the 'disabled' flag and a dummy email address: xxxx@example.com
    which will not show in the growerp user interface. This service can be run regularly.
    and assign every user to the following security user groups:
    'GROWERP_M_ADMIN', 'GROWERP_M_EMPLOYEE', 'GROWERP_M_CUSTOMER', 'GROWERP_M_LEAD', 'GROWERP_M_SUPPLIER'
    - run the service: adapt#User  in the 'tools/services' menu with an input parameter: the partyId of the single company to support.
5. In the growerp frontend set the same partyId in the assets/cfg/app_setting.json 'singleCompany'
6. If not done already add current categories to the root category of the company: run service add#CategoriesToRootCategory

