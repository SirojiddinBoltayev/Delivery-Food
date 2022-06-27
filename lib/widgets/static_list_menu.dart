class  Bulimlar{
 String title;
 String soat;
 String sana;
 String kurishlarSoni;
 String mavzu;
 String xabarTuliq;
 String imageUrl;

 Bulimlar(this.title,this.soat,this.sana,this.kurishlarSoni,this.mavzu,this.imageUrl,this.xabarTuliq);


 static List<Bulimlar> listCard = [
   Bulimlar("Mahalliy", "16:48", "Bugun", "81", "Buxoro shahrida ichimlik suvi ta’minoti to‘liq tiklandi","https://s.daryo.uz/wp-content/uploads/2022/06/photo_2022-06-12_15-56-38.jpg" ,"Buxoro shahrida 12-iyun kuni suv quvurdagi nosozlik bartaraf etilib, ichimlik suvi ta’minoti to‘liq tiklandi, deb xabar bermoqda Buxoro viloyati hokimligi"+
       "Kecha, 11-iyun kuni Buxoro shahri Piridastgir ko‘chasidan o‘tuvchi markaziy ichimlik suvi quvurida nosozlik yuzaga kelgani tufayli shahar aholisining ichimlik suvi ta’minoti vaqtincha to‘xtatilgan edi. “Buxoro suv ta’minoti” MCHJ mutaxassislari tomonidan olib borilgan avariya-tiklash ishlari natijasida yaroqsiz holga kelib qolgan shisha tolali hobus diametri 700 millimetr bo‘lgan po‘lat quvurga almashtirildi."),
   Bulimlar("San’at, Shou-biznes", "18:54", "10.06.2022", " 65080", "Tan soqchisining pichoqlanishidan tortib tegajog‘likkacha: to‘ylarda o‘zbekistonlik xonandalar duch keladigan ayanchli va kulgili holatlar", "http://s.daryo.uz/wp-content/uploads/2022/06/797579-680x453.jpg", "San’atkorlar uchun to‘y xizmatlari har doim ham ko‘ngildagidek o‘tavermaydi. Ba’zan kulgili, ba’zida esa ko‘ngilsiz voqealar ham bo‘lib turadi. O‘zbek san’ati vakillarining ayrimlari o‘zlari bilan sodir bo‘lgan to‘y sarguzashtlari haqida so‘zlab berdi."+

       "Mirzabek Xolmedov: “To‘pponcha bilan qo‘rqitishgan”" +"To‘ylar bilan bog‘liq ko‘plab qiziqarli voqealar bo‘lgan. Hozir-ku san’atkorlar to‘yga emin-erkin borib kelishadi. Avvallari esa to‘yda xonanda yoki qiziqchiga qitmirlik qilish odatga aylangandi. Mushtumzo‘rlar to‘y yakunida istagan xurmacha qilig‘ini qilardi. Mast-alastga aka, sizniki to‘g‘ri, deb turishdan boshqa iloj yo‘q edi. Eng yomoni, 1988—1989-yili to‘pponcha bilan qo‘rqitish urf bo‘lgan. Bir kuni to‘yda xizmat qilayotgan ikki erkak kelib, chetroqqa o‘ting, gap bor, degan. Ular meni o‘zlari bilan boshqa to‘y xizmatiga olib borishni istashgan ekan. Yo‘q, xizmatdaman, deyishim bilan kostyumining ichki cho‘ntagidan to‘pponcha ko‘rsatgan. Xullas, shunday to‘ylarda pishib, Mirzabek Xolmedov bo‘lganman, — deydi qiziqchi."),
   Bulimlar("Sport", "23:58", " Kecha", " 39199", "U-23 Osiyo Kubogi—2022. 2 ta penalti va 4 ta gol. 10 kishi qolgan O‘zbekiston U-23 terma jamoasi penaltilar seriyasida Iroqni yengib, 1/2 finalga yo‘l oldi", "https://s.daryo.uz/wp-content/uploads/2022/06/photo_2022-06-11_23-15-28.jpg", "Futbol bo‘yicha U-23 Osiyo Kubogi—2022 musobaqasining 1/4 finali doirasida O‘zbekiston U-23 terma jamoasi 11-iyun, shanba kuni Iroq bilan bahs olib bordi"+"Asabiy ruhda o‘tgan bahsning 19-daqiqasiga kelib, hisob ochildi. Abduvohid Ne’matov raqib futbolchisining provokatsion harakatlariga uchib, unga musht tushirdi. Natijada Ne’matovga qizil kartochka berildi, mezbonlar darvozasiga esa 11 metrlik jarima zarbasi belgilandi. Penalti muvaffaqiyatli amalga oshirildi — 0:1."+

       "Ushbu to‘xtalishlar uchun hakam birinchi bo‘limga 12 daqiqa qo‘shib berdi. 45+5-daqiqada Iroq darvozasiga ham penalti belgilandi. Penaltidan Jasur Jaloliddinov unumli foydalandi. 50-daqiqada O‘zbekiston terma jamoasi ajoyib hujum tashkil qildi va mehmonlar o‘z darvozasiga gol kiritib qo‘ydi. 68-daqiqaga kelib, Iroq muvozanatni tikladi — 2:2. Ushbu hisob uchrashuvning asosiy daqiqasi so‘ngigacha saqlanib turdi."),
   Bulimlar("Mahalliy, Kolumnistlar", "08:30", "Kecha", " 41236", "Bo‘shab qolgani uchun yopilgan Qiziltepa qamoqxonasi, O‘zbekiston maktablarining kitobsiz qolish xavfi, Mustaqillik maydonidagi globus o‘rnida qanday yodgorlik bo‘lishi mumkin edi? O‘zbek matbuoti 11-iyunda nimalar haqida yozgan?", "http://s.daryo.uz/wp-content/uploads/2022/06/11111-680x395.jpg", "Tarix — hayot takrorlardan iborat ekani haqida saboq beruvchi eng yaxshi ustoz; har kunlik bu saboqlardan doim ham vaqtida va to‘g‘ri xulosalar chiqarilmasa-da, tarix baribir beqiyos ustozligicha qolaveradi."+

 "O‘zbekiston va jahonning bundan 90, 60 va 30 yil avvalgi manzarasiga o‘zbek matbuoti ko‘zi bilan imkon qadar nazar solish ham qiziq, ham foydali ko‘rindi. O‘n yillar muqaddam aynan bugungi sanada nimalar bo‘lgan, davr matbuoti ular haqida nima deb yozgan, ushbu voqea-hodisalarga jamoatchilikning munosabati qanday edi — bari “Kun matbuoti tarixi” rukni materiallarida.90 yil avval. 1932-yil 11-iyun, shanba"+

 "1932-yilning eng ko‘p tanqid qilinadigan tashkilotlaridan biri Narkompros (Maorif xalq komissarligi) va uning “O‘znashr” davlat nashriyoti. “Qizil O‘zbekiston”ning bugungi sonida ham “O‘zbekiston maktablari bu yil ham kitobsiz qolish xavfi bor”ligi vajidan tanqidiy bir material berilgan:"),
   // Bulimlar(title, soat, sana, kurishlarSoni, mavzu, imageUrl, xabarTuliq),
   // Bulimlar(title, soat, sana, kurishlarSoni, mavzu, imageUrl, xabarTuliq),
   // Bulimlar(title, soat, sana, kurishlarSoni, mavzu, imageUrl, xabarTuliq),
 ];
}

