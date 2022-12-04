import 'package:hastatakip/ekranlar/ana_ekran/hastal%C4%B1klar/hastal%C4%B1klar_model.dart';

class HastaliklarController {
  List<HastaliklarModel> hastaliklarList = [];

  void onInit() {
    hastaliklarList = [
      HastaliklarModel(
        korunmaYontemleri: [
          "Mümkün olduğu kadar yurt dışına yolculuk yapılmaması önerilmektedir.",
          "El temizliğine dikkat edilmelidir. Eller en az 20 saniye boyunca sabun ve suyla yıkanmalı, sabun ve suyun olmadığı durumlarda  alkol bazlı el antiseptiği kullanılmalıdır.",
          "Antiseptik veya antibakteriyel içeren sabun kullanmaya gerek yoktur, normal sabun yeterlidir.",
          "Eller yıkanmadan ağız, burun ve gözlerle temas edilmemelidir.",
          "Hasta insanlarla temastan kaçınmalıdır (mümkün ise en az 1 m uzakta bulunulmalı)Özellikle hasta insanlarla veya çevreleriyle doğrudan temas ettikten sonra eller sık sık temizlenmelidir.",
          "Hastaların yoğun olarak bulunması nedeniyle mümkün ise sağlık merkezlerine gidilmemeli, sağlık kuruluşuna gidilmesi gereken durumlarda diğer hastalarla temas en aza indirilmelidir.",
          "Öksürme veya hapşırma sırasında burun ve ağız tek kullanımlık kağıt  mendil ile örtülmeli, kağıt mendilin bulunmadığı durumlarda ise dirsek içi kullanılmalı, mümkünse kalabalık yerlere girilmemeli eğer girmek zorunda kalınıyorsa ağız ve burun kapatılmalı,tıbbi maske kullanılmalıdır.",
          "Çiğ veya az pişmiş hayvan ürünleri yemekten kaçınılmalıdır.İyi pişmiş yiyecekler tercih edilmelidir. ",
          "Seyahat sonrası 14 gün içinde herhangi bir solunum yolu semptomu olursa maske takılarak en yakın sağlık kuruluşuna başvurulmalı,doktora seyahat öyküsü hakkında bilgi verilmelidir. ",
        ],
        belirtiMaddeleri: ["Ateş", "Öksürük", "Nefes Darlığı", "Baş ağrısı"],
        name: "Covid-19",
        kisaAciklama: "Bilgi Sahibi Olmak İçin Tıklayınız",
        baslik: "Covid-19 Nedir?",
        belirtileri:
            "Belirtisiz olgular olabileceği bildirilmekle birlikte, bunların oranı bilinmemektedir. En çok karşılaşılan belirtiler;  ",
        korunmaYollari: "",
        uzunAciklama:
            "Yeni Koronavirüs Hastalığı (COVID-19), ilk olarak Çin’in Vuhan Eyaleti’nde Aralık ayının sonlarında solunum yolu belirtileri (ateş, öksürük, nefes darlığı) gelişen bir grup hastada yapılan araştırmalar sonucunda 13 Ocak 2020’de tanımlanan bir virüstür.Salgın başlangıçta bu bölgedeki deniz ürünleri ve hayvan pazarında bulunanlarda tespit edilmiştir. Daha sonra insandan insana bulaşarak Vuhan başta olmak üzere Hubei eyaletindeki diğer şehirlere ve Çin Halk Cumhuriyeti’nin diğer eyaletlerine ve diğer dünya ülkelerine yayılmıştır.",
      ),
      HastaliklarModel(
        korunmaYontemleri: [
          "Aşınızı yaptırın.Grip, aşı ile önlenebilen tek solunum yolu enfeksiyonudur.",
          " Virüs hemen her yıl genetik yapısını değiştirdiği ve farklı bir virüs olarak çıktığı için aşı her yıl tekrar yaptırılmalıdır.Grip aşısının etkinliği %70-90’dır. Sağlıklı erişkinlerin %90’ını hastalıktan korur.",
          "Mecbur kalmadıkça kalabalık ortamlardan uzak durun.Yüzünüze dokunmayın.",
          "Virüs el ve cansız nesnelerle temas yoluyla bulaştığı için kişisel hijyeninize çok dikkat edin.",
          "Ellerinizi sık sık yıkayın. Çocuklarınıza da bu alışkanlığı kazandırın.Ellerinizi yıkama fırsatınız yoksa el dezenfektanları kullanın.",
          "Grip olduysanız mutlaka dinlenin.",
          " Ateşiniz düşmeye başladıktan sonra en az 24 saat istirahat etmeniz gerekir.",
          "Düzenli egzersiz yapın. Düzenli egzersizler hem iyileşmenize hem de bağışıklık sisteminizin güçlenmesine yardımcı olur. ",
          "Doğru beslenin. Sağlıklı ve dengeli bir beslenme alışkanlığı bağışıklık sisteminizi güçlendirir.",
        ],
        belirtiMaddeleri: [
          "Yüksek ateş",
          "Kas ağrıları",
          "3.Terleme",
          "Baş ağrısı",
          "Kuru veya kalıcı öksürük",
          "Yorgunluk",
          "Burun tıkanıklığı",
          "Boğaz ağrısı",
          "Halsizlik",
          "Öksürüğe bağlı kusma"
        ],
        belirtileri:
            "Grip genellikle burun akıntısıyla birlikte başlasa da aşağıdaki belirtilerle de sıkça karşılaşılmaktadır;.Grip, özellikle genç ve sağlıklı kişilerde daha hafif bulgularla ortaya çıkabilir.",
        korunmaYollari: "",
        name: "Grip",
        kisaAciklama: "Bilgi Sahibi Olmak İçin Tıklayınız",
        baslik: "Grip Nedr?",
        uzunAciklama:
            "Grip, virüslerin neden olduğu bir solunum yolu enfeksiyonudur. Tıp literatüründeki ismiyle influenza, genellikle halk dilinde grip olarak adlandırılır. Grip burun, boğaz ve akciğerlere yerleşebilen bir grup virüsten kaynaklanmaktadır.Grip ilaçlarla, bitkisel çaylarla veya besin takviyeleri ile kısa sürede geçebileceği gibi risk faktörleri bulunan kimi hastalarda oluşabilecek ileri komplikasyonlarıyla tedavi edilmezse ölümcül hale gelebilmektedir.",
      ),
      HastaliklarModel(
        korunmaYontemleri: [
          "İdeal ağırlığınızı koruyun.",
          "Düzenli fiziksel aktivite yapın.",
          "Sigara içmeyin.",
          "Beslenmenize dikkat edin.",
          "Stresden mümkün olduğunca uzak durun.",
          "Düzenli olarak sağlık kontrollerinizi yaptırın."
        ],
        belirtiMaddeleri: [
          "Baş ağrısı",
          "Baş dönmesi",
          "Kulak çınlaması",
          "Hâlsizlik",
          "Nefes darlığı",
          "Bulanık görme",
          "Sık idrara çıkma",
          "Burun kanaması",
          "Kalp ağrısı ya da kalp ritminin düzensiz olması"
        ],
        belirtileri: "",
        korunmaYollari: "",
        name: "Tansiyon",
        kisaAciklama: "Bilgi Sahibi Olmak İçin Tıklayınız",
        baslik: "Tansiyon Nedir?",
        uzunAciklama:
            "Atardamarların içindeki kan basıncına tansiyon denir. Kapl kası kasıldığında atardamarlara kan pompalanır. Bu esnada ölçülen basınç sistolik basınçtır. Kalp kası gevşediğinde ise kan damarda durulur; bu esnada ölçülen basınç diastolik basınçtır. Tansiyon ölçümünde sistolik (büyük) ve diyastolik (küçük) kan basınçlarına bakılır. Tansiyon yüksekliğine hipertansiyon denir. ",
      ),
      HastaliklarModel(
        korunmaYontemleri: [
          "Yeterli ve dengeli beslenme sağlanmalı;günde en az beş porsiyon sebze ve meyve tüketilmelidir. ",
          "Şeker gibi basit karbonhidratlar yerine tam tahıl ürünleri,kuru baklagiller tercih edilmeli, basit karbonhidratlar  günlük enerjinin yüzde 10’unu aşmamalıdır.",
          "Günlük tüketilen tuz miktarının 5 g’ı aşmamasına dikkat edilmelidir.",
          "Hareketli yaşam tarzı benimsenmeli, haftanın en az 5 günü düzenli olarak en az 30 dakika orta yoğunlukta aktivite yapılmalıdır(tempolu yürüyüş vb.).",
          "Aşırı kilolular kilo kaybı sağlamak için daha fazla fiziksel aktivite yapmalıdır.",
          "Sigara kullanılmamalı, aşırı alkol tüketilmemelidir.",
          "Boya uygun vücut ağırlığı hedeflenmelidir.",
          "Günlük ihtiyaç duyulan enerjinin yüzde 25-30’u yağlardan sağlanmalı enerjinin doymuş yağ asidinden gelen oranı yüzde 10’un altında olmalıdır.",
        ],
        belirtiMaddeleri: [
          "Aşırı Kilo Alma veya Zayıflama",
          "Sürekli Tatlı Yeme İsteği",
          "Sürekli Terleme",
          "Psikolojik Dengesizlik",
          "Uyku düzensizliği",
        ],
        belirtileri: "",
        korunmaYollari: "",
        name: "Diyabet",
        kisaAciklama: "Bilgi Sahibi Olmak İçin Tıklayınız",
        baslik: "Diyabet Nedir?",
        uzunAciklama:
            "İnsan vücudunun enerji ihtiyacı; alınan besinlerdeki karbonhidrat, protein ve yağlardan sağlanır. Bu besin öğeleri sindirilirken glikoz adı verilen basit şekerler açığa çıkar. Glikoz vücudun tüm organları için en önemli besin kaynağıdır. Hücrelerin glikozun enerjisini kullanabilmesi için, glikozun hücre içine alınması gerekir. Glikozun hücre içine girmesini ve glikojen olarak depolanmasını sağlayan, pankreas bezi tarafından salgılanan insülin hormonudur.Şeker hastalığı ya da diyabet (Diabetes Mellitus), pankreasın vücut için yeterli miktarda insülin üretememesi ya da ürettiği insülinin vücut tarafından etkili bir şekilde kullanılamaması sonucunda ortaya çıkan, yüksek kan şekeri ile seyreden bir hastalıktır.",
      ),
      HastaliklarModel(
        korunmaYontemleri: [
          "Gıdaların temizliği çok önemli.Özellikle çiğ tüketilecek sebze meyveler iyice yıkanmalıdır.",
          "Et, tavuk ve balık gibi hayvansal gıdalar iyice pişirilmelidir. Güvenilir yerlerden alınmalıdır. ",
          "Dondurulmuş ürünler dikkatli seçilmelidir.Dondurulmuş gıda yoluyla da besin zehirlenmeleri sıklıkla meydana gelir.",
          "Yemek hazırlarken ortamın temiz olması gerekir.Tuvalet, kedi kumu veya köpek dışkısı gibi temizlenmesi gereken durumlar yemek hazırlığı sırasında yapılmamalıdır.",
          "Gıdalar tekrar ısıtılırken pişirme derecesinde tutulmalıdır.",
          "Köy, çiftlik ya da hayvanat bahçesi gibi alanlarda hayvana temastan sonra eller mutlaka sabunla ve suyla iyice yıkanmalıdır.",
        ],
        belirtiMaddeleri: [
          "Ateş",
          "Karın ağrısı ve krampları",
          "Kusma",
          "Mide bulantısı ",
          "Sulu veya kanlı ishal",
        ],
        belirtileri:
            "Gıda zehirlenmesinin belirtileri kontaminasyon kaynağına ve tipine göre değişir. Çoğu gıda zehirlenmesinde yaygın olarak görülen belirtiler arasında;",
        korunmaYollari: "",
        name: "Gıda Zehirlenmesi",
        kisaAciklama: "Bilgi Sahibi Olmak İçin Tıklayınız",
        baslik: "Gıda Zehirlenmesi Nedir?",
        uzunAciklama:
            "Gıda zehirlenmesi, çeşitli organizmalar veya toksinler ile kontamine olmuş gıdaların yenilmesi ve sindirim sistemine girmesinden kaynaklanan hastalığa verilen isimdir.Aralarında bakterilerin, virüslerin ve parazitlerin bulunduğu bulaşıcı organizmalar ve ve bu organizmalardan kaynaklanan toksinler gıda zehirlenmesinin en yaygın nedenleri arasında bulunur.Bulaşıcı organizmalar veya toksinleri, gıdaları işleme ya da üretim aşamalarının herhangi bir noktasında kirletebilir. Gıdaların yanlış saklanması, hazırlanması, kullanılması veya pişirilmesi durumunda evde de kontaminasyon meydana gelebilir.Gıda zehirlenmesi bir çok vakada hafif seyreder ve tedavi olmaksızın düzelir. Ancak bazı vakalarda tıbbi yardım için hastaneye gidilmesi gerekli olabilir.",
      ),
      HastaliklarModel(
        korunmaYontemleri: [
          "Vücut direncini güçlendirmek için balık, süt, yumurta, kırmızı ve beyaz et gibi proteinden zengin gıdaların tüketilmesine özen gösterin.",
          "Protein grubunun yanı sıra yeşil yapraklı mevsim sebzeleri, süt ve yoğurt gibi kalsiyum ağırlıklı besinlerin ihmal etmeyin.",
          "Depolarda bekletilmiş ve dondurulmuş gıdalardan mümkün olduğu kadar uzak durun.",
          "Mevsimine uygun meyve-sebzelerden tüketin.",
          "Bağışıklık sistemini kuvvetlendirmek için probiyotik, vitamin ve mineral takviyeleri alın. ",
          "Günde en az 6-7 saat uyumaya çalışın.",
          "Gün içinde fırsat buldukça açık havada temiz havadan ve güneşten faydalanın",
          "Haftada en az 5 gün spor yapın.Özellikle alerjik kişiler için tavsiye edilen yüzmeyi tercih edin",
          "Sonbaharda da hava şartlarına uygun kıyafet seçin, ısı değişimlerinin olduğu süreçte ne çok kalın ne de çok ince giyinin.",
        ],
        belirtiMaddeleri: [
          "Kaşıntı",
          "Burun tıkanıklığı",
          "Sık hapşırma",
          "Kronik öksürük",
          "Nefes darlığı veya hırıltı",
          "Vücutta döküntü veya şişlik",
        ],
        belirtileri:
            "Alerji belirtileri kişiden kişiye farklılık gösterir. Alerjinin şiddeti de belirtiler üzerinde etkilidir.",
        korunmaYollari: "",
        name: "Alerji",
        kisaAciklama: "Bilgi Sahibi Olmak İçin Tıklayınız",
        baslik: "Aler Nedir?",
        uzunAciklama:
            "Alerji vücudumuzda bulunan antikorların, başkaları için zararsız olabilecek maddelere karşı savaş açması ve reaksiyon oluşturmasıdır. Bu maddeler toz, besinler, solunum yolu ile alınan maddeler, polen, akarlar ve hayvan tüyleri olabilir. Alerji her yaş gurubunda görülebilir. Çoğunlukla genetik olduğu düşünülse de çevresel faktörlerin etkisi ile değişik yaşlarda alerji ortaya çıkmaktadır.",
      ),
      HastaliklarModel(
        korunmaYontemleri: [],
        belirtiMaddeleri: [
          "Karın Bölgesinde öne doğru şişkinlik",
          "Yaşa göre kilo azlığı",
          "Kas zayıflığı",
          "Kansızlık",
          "Dışkıda anormallik, büyük tuvalet ihtiyacının artması",
          "İshal",
          "Kusma",
          "Bezginlik",
          "Nedeni bilinmeyen karaciğer hastalıkları",
          "Büyüme geriliği",
          "Ağız içinde oluşan aftlar",
          "İştahsızlık, gaz şikayetleri",
          "Eklem ve kemik ağrıları",
          "Sinirlilik",
          "Ciltte kaşıntılı döküntüler"
        ],
        belirtileri: "",
        korunmaYollari:
            "Çölyak hastalığı, genetik olarak yatkın bireylerde gluten tüketimiyle ve bazı çevresel faktörlerin etkisiyle ortaya çıkmaktadır. Özellikle ailesinde çölyak hastası olan bireyler bizlere ‘’çölyak hastalığından korunma yöntemi var mıdır?’’ sorusunu sıkça yöneltmektedir.Çölyak hastalığından korunmak için net olarak söyleyebileceğimiz bir önlem yok ancak, yapılmış olan bilimsel çalışmalar eğer bebekler gluten ile yani çölyak hastalarında zararlı olduğunu bildiğimiz tahıllarla, anne sütü aldıkları zaman tanışırlarsa hastalığın ortaya çıkma olasılığının azalacağını bildirmektedir. Bizim önerimiz bebek beslenmesinde gluten içeren tahılların anne sütü ile beslenirken 4 ile 6 ay arasında bebeğin diyetine sokulmasıdır. Eğer bu yöntem izlenecek olursa hastalığın ortaya çıkma olasılığı azaltılacaktır.",
        name: "Çölyak",
        kisaAciklama: "Bilgi Sahibi Olmak İçin Tıklayınız",
        baslik: "Çölyak Nedir?",
        uzunAciklama:
            "Çölyak hastalığı (ya da Gluten Enteropatisi), bağırsaklardaki sindirimi sağlayan villus [tüysü oluşumlar] denilen yapıların bozulmasına sebep olan ve dolayısıyla da yiyeceklerdeki besinin emilmesini engelleyen ve ince bağırsakta hasarlar oluşturan bir  sindirim sistemi hastalığıdır. Bu hasara buğday, arpa, çavdar, yulaf gibi tahılların içerisinde bulunan guluten isimli bir protein neden olmaktadır.",
      ),
      HastaliklarModel(
        korunmaYontemleri: [
          "Temel korunma yöntemi aşıdır ve rutin aşı takvimine uyulmalıdır.Ayrıca sağlık çalışanları, küçük çocuklarla birlikte yaşayan veya onlara yönelik iş yapanlar, çocuk sahibi olmayı planlayan kadınlar ve bağışıklığı bastırılmış insanlarla birlikte yaşayan kimseler başta olmak üzere, yüksek risk grubunda olan insanlara önerilmektedir.",
          "Her viral enfeksiyonda olduğu gibi el yıkama, hasta kişilerden uzak durma, kapalı ortamlardan uzak durmak önemlidir.",
          "Suçiçeği geçirenlerin deride kızarıkların başlamasından döküntülerin kurumasına kadar olan süreçte bulaşmayı önlemek için kreş ve okula gitmemeleri gerekir.",
          "Suçiçeği geçirenler öksürür ya da hapşırırken ağızlarını kapamalı, ellerini yıkamalı ve başkaları ile aynı eşyaları paylaşmamalıdır.",
          "Mikrop kapmaması için döküntüler kaşınmamalıdır. Çocuğunuzun tırnaklarını kesin ve gerekirse gece eldiven giydirin.",
        ],
        belirtiMaddeleri: [
          "İlk günlerde ciltte kızarıklıklar görülebilir.",
          "Döküntüden bir ila iki gün önce hafif ateş, burun akıntısı, halsizlik ve iştahsızlık görülür.",
          "Döküntüler öncelikle gövdeden başlar, sonrasında baş ve ayaklara yayılır.",
          "Kızarıklık önce küçük parçacıklar halinde ortaya çıkar ve daha sonra kabarcıklar ve bunu takiben yara kabuğu haline döner.",
        ],
        belirtileri: "",
        korunmaYollari: "",
        name: "Su Çiçeği",
        kisaAciklama: "Bilgi Sahibi Olmak İçin Tıklayınız",
        baslik: "Su Çiçeği Nedir?",
        uzunAciklama:
            "Suçiçeği sıklıkla çocukluk yaşlarında görülen, Varicella Zoster virüsünün (VZV) yol açtığı ve döküntülere neden olan bulaşıcı bir hastalıktır. Hava ve temas yoluyla çok kolay bulaşabildiği için koruyucu olarak aşılama büyük önem taşır. Aşı olmamış ve hastalığı geçirmemiş yetişkinler de risk altındadır.Suçiçeği mikrobu bağışıklık sistemini en çok baskılayan virüslerden biridir. Genelde hafif geçirilen bir hastalık olmakla beraber bağışıklık sistemi baskılanmış kişilerde ve yetişkinlerde şiddetli olabilir.Ensefalit (beyin dokusunda iltihap) ve zatürreye sebebiyet verebilir.Suçiçeği aynı zamanda hamileler için de risk taşır. Zira doğacak bebekte doğumsal bozukluklara neden olabilir. ",
      ),
    ];
  }
}
