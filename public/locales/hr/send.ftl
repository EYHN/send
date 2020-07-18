# Miku Send is a brand name and should not be localized.
title = Miku Send
siteFeedback = Povratne informacije
importingFile = Uvoz…
encryptingFile = Šifriranje …
decryptingFile = Dešifriranje …
downloadCount =
    { $num ->
        [one] { $num } preuzimanje
        [few] { $num } preuzimanja
       *[other] { $num } preuzimanja
    }
timespanHours =
    { $num ->
        [one] { $num } sat
        [few] { $num } sata
       *[other] { $num } sati
    }
copiedUrl = Kopirano!
unlockInputPlaceholder = Lozinka
unlockButtonLabel = Otključaj
downloadButtonLabel = Preuzmi
downloadFinish = Preuzimanje je završeno.
fileSizeProgress = ({ $partialSize } od { $totalSize })
<<<<<<< HEAD
sendYourFilesLink = Isprobajte Miku Send
errorPageHeader = Nešto je pošlo naopako!
fileTooBig = Datoteka je prevelika za prijenos. Treba biti manja od { $size }.
=======
sendYourFilesLink = Isprobaj Firefox Send
errorPageHeader = Dogodila se neka greška!
fileTooBig = Datoteka je prevelika za prijenos. Mora biti manja od { $size }.
>>>>>>> 3e9be676413a6e1baaf6a354c180e91899d10bec
linkExpiredAlt = Poveznica je istekla
notSupportedHeader = Tvoj preglednik nije podržan.
notSupportedLink = Zašto moj preglednik nije podržan?
<<<<<<< HEAD
notSupportedOutdatedDetail = Nažalost, ovo izdanje Firefoxa ne podržava web tehnologiju koja omogućava Miku Send. Morat ćete ažurirati vaš preglednik.
=======
notSupportedOutdatedDetail = Nažalost, ovo izdanje Firefoxa ne podržava web tehnologiju koja omogućava Firefox Send. Morat ćeš ažurirati preglednik.
>>>>>>> 3e9be676413a6e1baaf6a354c180e91899d10bec
updateFirefox = Ažuriraj Firefox
deletePopupCancel = Odustani
deleteButtonHover = Obriši
footerLinkLegal = Pravni podaci
footerLinkPrivacy = Privatnost
footerLinkCookies = Kolačići
passwordTryAgain = Netočna lozinka. Pokušaj ponovo.
<<<<<<< HEAD
javascriptRequired = Za Miku Send potreban je JavaScript
whyJavascript = Zašto je za Miku Send potreban JavaScript?
enableJavascript = Omogućite JavaScript i pokušajte ponovo.
=======
javascriptRequired = Za Firefox Send potreban je JavaScript
whyJavascript = Zašto je za Firefox Send potreban JavaScript?
enableJavascript = Aktiviraj JavaScript i pokušaj ponovo.
>>>>>>> 3e9be676413a6e1baaf6a354c180e91899d10bec
# A short representation of a countdown timer containing the number of hours and minutes remaining as digits, example "13h 47m"
expiresHoursMinutes = { $hours }s { $minutes }m
# A short representation of a countdown timer containing the number of minutes remaining as digits, example "56m"
expiresMinutes = { $minutes }min
# A short status message shown when the user enters a long password
maxPasswordLength = Maksimalna duljina lozinke: { $length }
# A short status message shown when there was an error setting the password
passwordSetError = Lozinku nije moguće postaviti

## Send version 2 strings

# Miku Send, Send, Firefox, Mozilla are proper names and should not be localized
-send-brand = Miku Send
-send-short-brand = Send
-firefox = Firefox
-mozilla = Mozilla
introTitle = Jednostavno i privatno dijeljenje datoteka
introDescription = { -send-brand } omogućava dijeljenje datoteka sa šifriranjem i poveznicom koja će automatski isteći. Ovim putem, stvari koje dijeliš ostaju privatne i osiguravaš se da ne ostaju zauvijek dostupne na internetu.
notifyUploadEncryptDone = Tvoja je datoteka šifrirana i spremna za slanje.
# downloadCount is from the downloadCount string and timespan is a timespanMinutes string. ex. 'Expires after 2 downloads or 25 minutes'
archiveExpiryInfo = Isteći će nakon { $downloadCount } ili { $timespan }
timespanMinutes =
    { $num ->
        [one] { $num } minuta
        [few] { $num } minute
       *[other] { $num } minuta
    }
timespanDays =
    { $num ->
        [one] { $num } dan
        [few] { $num } dana
       *[other] { $num } dana
    }
timespanWeeks =
    { $num ->
        [one] { $num } tjedan
        [few] { $num } tjedna
       *[other] { $num } tjedana
    }
fileCount =
    { $num ->
        [one] { $num } datoteka
        [few] { $num } datoteke
       *[other] { $num } datoteka
    }
# byte abbreviation
bytes = B
# kibibyte abbreviation
kb = KB
# mebibyte abbreviation
mb = MB
# gibibyte abbreviation
gb = GB
# localized number and byte abbreviation. example "2.5MB"
fileSize = { $num }{ $units }
# $size is the size of the file, displayed using the fileSize message as format (e.g. "2.5MB")
totalSize = Ukupna veličina: { $size }
# the next line after the colon contains a file name
copyLinkDescription = Kopiraj poveznicu za dijeljenje svoje datoteke:
copyLinkButton = Kopiraj poveznicu
downloadTitle = Preuzmi datoteke
downloadDescription = Ova se datoteka dijelila putem usluge { -send-brand } sa šifriranjem i poveznicom koja će automatski isteći.
trySendDescription = Probaj { -send-brand } za jednostavno i sigurno dijeljenje datoteka.
# count will always be > 10
tooManyFiles =
    { $count ->
        [one] Istovremeno se može prenijeti samo { $count } datoteka.
        [few] Istovremeno se može prenijeti samo { $count } datoteke.
       *[other] Istovremeno se može prenijeti samo { $count } datoteka.
    }
# count will always be > 10
tooManyArchives =
    { $count ->
        [one] Dozvoljena je samo { $count } arhiva.
        [few] Dozvoljene su samo { $count } arhive.
       *[other] Dozvoljeno je samo { $count } arhiva.
    }
expiredTitle = Poveznica je istekla.
notSupportedDescription = { -send-brand } neće raditi s ovim preglednikom. { -send-short-brand } najbolje radi sa zadnjom { -firefox } verzijom i radit će s aktualnim verzijama većine preglednika.
downloadFirefox = Preuzmi { -firefox }
legalTitle = { -send-short-brand } politika privatnosti
legalDateStamp = Verzija 1.0, od 12. ožujka 2019. godine
# A short representation of a countdown timer containing the number of days, hours, and minutes remaining as digits, example "2d 11h 56m"
expiresDaysHoursMinutes = { $days }d { $hours }s { $minutes }m
addFilesButton = Odaberi datoteke za prijenos
uploadButton = Prijenos
# the first part of the string 'Drag and drop files or click to send up to 1GB'
dragAndDropFiles = Povuci i ispusti datoteke
# the second part of the string 'Drag and drop files or click to send up to 1GB'
# $size is the size of the file, displayed using the fileSize message as format (e.g. "2.5MB")
orClickWithSize = ili pritisni gumb, za slanje do { $size }
addPassword = Zaštiti s lozinkom
emailPlaceholder = Upiši svoju e-adresu
# $size is the size of the file, displayed using the fileSize message as format (e.g. "2.5MB")
signInSizeBump = Prijavi se, za slanje do { $size }
signInOnlyButton = Prijavi se
accountBenefitTitle = Otvori { -firefox } račun ili se prijavi
# $size is the size of the file, displayed using the fileSize message as format (e.g. "2.5MB")
accountBenefitLargeFiles = Dijeli datoteke do { $size }
accountBenefitDownloadCount = Dijeli datoteke s više osoba
accountBenefitTimeLimit =
    { $count ->
        [one] Ostavi poveznice aktivnima { $count } dan
        [few] Ostavi poveznice aktivnima { $count } dana
       *[other] Ostavi poveznice aktivnima { $count } dana
    }
accountBenefitSync = Upravljaj dijeljenim datotekama s bilo kojeg uređaja
accountBenefitMoz = Saznaj više o drugim { -mozilla } uslugama
signOut = Odjavi se
okButton = U redu
downloadingTitle = Preuzimanje
noStreamsWarning = Ovaj preglednik možda neće moći dešifrirati datoteku ove veličine.
noStreamsOptionCopy = Za otvaranje u drugom pregledniku, kopiraj poveznicu
noStreamsOptionFirefox = Isprobaj naš omiljeni preglednik
noStreamsOptionDownload = Nastavi s ovim preglednikom
downloadFirefoxPromo = Potpuno novi { -firefox } donosi { -send-short-brand }.
# the next line after the colon contains a file name
shareLinkDescription = Dijeli poveznicu na tvoju datoteku:
shareLinkButton = Dijeli poveznicu
# $name is the name of the file
shareMessage = Preuzmi „{ $name }” pomoću { -send-brand }: jednostavno i sigurno dijeljenje datoteka
trailheadPromo = Postoji način, kako zaštititi vlastitu privatnost. Pridruži se Firefoxu.
learnMore = Saznaj više.
