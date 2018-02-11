# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# encoding: utf-8
Musica.delete_all

Musica.create!(
  nome: 'A barca',
  autor_e_compositor: 'Padre Zezinho',
  temas: 'comunhão, serviço, papa, tempo comum',
  cifras: %{ C  G/B              Am          C7  F        Dm                 G
Tu,te abeiraste da praia,      não buscaste nem sábios nem ricos.
          C G/B              C C7
Somente queres que eu te siga.

     F   G                    C  Am Dm        G                  C C7
Senhor, Tu me olhaste nos olhos, a sorrir, pronunciaste meu nome,
          F    G                 C  Am       Dm  G               C F C
lá na praia, eu larguei o meu barco, junto a Ti, buscarei outro mar.

C   G/B                  Am       C7     F    Dm                  G
Tu, sabes bem que em meu barco,  eu não tenho nem ouro e nem espadas,
         C G/B               C C7
somente redes e o meu trabalho.

(Refrão)

C  G/B                Am   C7    F            Dm          G
Tu, minhas mãos solicitas, meu cansaço que a outros descanse, amor que
 C    G/B              C C7
almejas, seguir te amando.

(Refrão)
C  G/D                   Am    C7    F          Dm         G
Tu, pescador de outros lagos, Ânsia eterna de almas que esperam,
         C  G/B                C C7
Bondoso amigo que assim me chamas.

(Refrão)},
  popularidade: 10
)

Musica.create!(
  nome: 'Chuva de graça',
  autor_e_compositor: 'Eliana Ribeiro',
  temas: 'entrada, final, alegria, água',
  cifras: %{C       G       Am      F
Ooohhh  Ooohhh  Ooohhh  Ooohhh
C       G       Am      F
Ooohhh  Ooohhh  Ooohhh  Ooohhh

C                G
Há uma chuva de graça aqui
Am              F
E está chovendo sobre todos nós
C                G                  F     F
E quem mais se entregar mais se molhará
C             G
Há uma semente pra germinar
Am                F
E muitos frutos a se produzir
C                G                  F    F
Na terra do coração derrama Tua graça

          C               G
Chuva de graça pedimos a ti
          Am              F
Chuva de graça derrama em nós
         C/E            G/B     F
Chuva de graça neste lugar, derrama
         C                G
Chuva de graça pedimos a ti
          Am              F
Chuva de graça derrama em nós
        C/E            G/B        F      F
Chuva de graça neste lugar, derrama

C       G       Am      F
Ooohhh  Ooohhh  Ooohhh  Ooohhh
C       G       Am      F
Ooohhh  Ooohhh  Ooohhh  Ooohh},
  popularidade: 9
)

Musica.create!(
  nome:'Yeshua',
  autor_e_compositor: 'Comunidade Católica Colo de Deus',
  temas: 'adoração',
  cifras: %{     Em
Te chamam de Deus e de Senhor
     C
Te chamam de Rei, de Salvador
   G                           D
E eu me atrevo a Te chamar de meu Amor

     Em
Te chamam de Deus e de Senhor
     C
Te chamam de Rei, de Salvador
  G                                 D
E eu me atrevo a Te chamar de meu Amor

 Em     C
Yeshua, Yeshua
   G       D
Tu és tão lindo
                      Em
Que eu nem sei me expressar
  C      G       D
Yeshua, Tu és tão lindo
 Em
Te chamam de Deus e de Senhor
     C
Te chamam de Rei, de Salvador
   G                           D
E eu me atrevo a Te chamar de meu Amor

     Em
Te chamam de Deus e de Senhor
     C
Te chamam de Rei, de Salvador
  G                                 D
E eu me atrevo a Te chamar de meu Amor

 Em     C
Yeshua, Yeshua
   G       D
Tu és tão lindo
                      Em
Que eu nem sei me expressar
  C      G       D
Yeshua, Tu és tão lindo},
  popularidade: 9
)