<!DOCTYPE html>
<html lang="fi">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>Savo Web Design</title>
  <meta name="description" content="Savo Web Design – modernit ja selkeät verkkosivut suomalaisille pienyrityksille." />
  <style>
    /* ===== Perusasetukset ===== */
    :root{
      --green-900:#0f2b21;    /* tumma tausta */
      --green-800:#163a2d;    /* header/footer */
      --green-700:#1b4332;    /* hero */
      --green-500:#2d6a4f;    /* painikkeet */
      --green-400:#40916c;    /* hover/korostus */
      --sand-50:#f4f5f3;      /* vaalea teksti/tausta */
      --sand-200:#e6ece7;     /* korttien tausta */
      --ink:#1f1f1f;          /* tumma teksti vaalealla */
      --muted:#c7d7cf;        /* hienovaraiset rajat */
      --radius:14px;
      --shadow:0 10px 20px rgba(0,0,0,.15);
    }
    html{scroll-behavior:smooth}
    *{box-sizing:border-box}
    body{margin:0;font-family:system-ui,-apple-system,Segoe UI,Roboto,Inter,Ubuntu,"Helvetica Neue",Arial,sans-serif;background:var(--green-900);color:var(--sand-50);}
    a{color:var(--sand-50);text-decoration:none}
    img{max-width:100%;display:block}

    /* ===== Yhteinen kontti ===== */
    .container{max-width:1100px;margin-inline:auto;padding-inline:20px}

    /* ===== Header / Navigaatio ===== */
    header{position:sticky;top:0;z-index:50;background:rgba(22,58,45,.9);backdrop-filter:saturate(150%) blur(6px);border-bottom:1px solid rgba(255,255,255,.05)}
    .nav{display:flex;align-items:center;justify-content:space-between;padding:14px 0}
    .brand{display:flex;align-items:center;gap:12px}
    .brand__logo{width:36px;height:36px;border-radius:50%;background:linear-gradient(135deg,var(--green-500),var(--green-700));display:grid;place-items:center;font-weight:700}
    .brand__name{font-weight:700;letter-spacing:.2px}
    .nav__links{display:flex;gap:18px}
    .nav__links a{opacity:.9}
    .nav__links a:hover{opacity:1;text-decoration:underline}

    /* ===== Hero ===== */
    .hero{background:linear-gradient(180deg,var(--green-700),var(--green-900));}
    .hero__wrap{display:grid;grid-template-columns:1.1fr .9fr;gap:36px;align-items:center;padding:64px 0}
    .hero h1{font-size:clamp(28px,3.2vw,44px);margin:0 0 12px}
    .hero p{margin:0 0 22px;line-height:1.6;opacity:.95}
    .cta{display:inline-flex;align-items:center;gap:10px;border:none;border-radius:999px;background:var(--green-500);color:#fff;padding:12px 18px;font-weight:600;box-shadow:var(--shadow);cursor:pointer}
    .cta:hover{background:var(--green-400)}
    .hero__card{background:rgba(255,255,255,.05);padding:18px;border:1px solid rgba(255,255,255,.08);border-radius:var(--radius)}
    .hero__img{border-radius:var(--radius);overflow:hidden;border:1px solid rgba(255,255,255,.08)}

    /* ===== Palvelut ===== */
    section{padding:64px 0}
    .section__title{font-size:28px;margin:0 0 18px}
    .muted{opacity:.8;margin:0 0 26px}

    .cards{display:grid;grid-template-columns:repeat(3,1fr);gap:18px}
    .card{background:linear-gradient(180deg,rgba(255,255,255,.08),rgba(255,255,255,.04));border:1px solid rgba(255,255,255,.08);border-radius:var(--radius);padding:20px}
    .card h3{margin:0 0 8px}
    .card p{margin:0 0 14px;opacity:.9}
    .chip{display:inline-block;background:rgba(64,145,108,.18);border:1px solid rgba(64,145,108,.35);color:#e7fff2;padding:6px 10px;border-radius:999px;font-size:14px}

    /* ===== Portfolio ===== */
    .grid{display:grid;grid-template-columns:repeat(3,1fr);gap:16px}
    .work{background:rgba(255,255,255,.06);border:1px solid rgba(255,255,255,.08);border-radius:var(--radius);overflow:hidden;display:flex;flex-direction:column}
    .work__img{aspect-ratio:16/10;background:linear-gradient(135deg,rgba(64,145,108,.35),rgba(27,67,50,.35))}
    .work__body{padding:16px}
    .work__body p{margin:0 0 12px;opacity:.95}
    .work__actions{padding:0 16px 16px}
    .btn-secondary{display:inline-flex;align-items:center;gap:8px;border-radius:10px;border:1px solid rgba(255,255,255,.18);padding:10px 14px;color:var(--sand-50)}
    .btn-secondary:hover{border-color:rgba(255,255,255,.35)}

    /* ===== Yhteyslomake ===== */
    .contact__wrap{display:grid;grid-template-columns:1fr 1fr;gap:24px}
    form{display:grid;gap:12px}
    input, textarea{width:100%;padding:12px 14px;border-radius:10px;border:1px solid rgba(255,255,255,.18);background:rgba(255,255,255,.06);color:var(--sand-50)}
    textarea{min-height:120px;resize:vertical}
    .form__hint{font-size:14px;opacity:.75}

    /* ===== Footer ===== */
    footer{background:var(--green-800);border-top:1px solid rgba(255,255,255,.06)}
    .footer__inner{display:flex;justify-content:space-between;align-items:center;padding:18px 0;font-size:14px}

    /* ===== Responsiivisuus ===== */
    @media (max-width: 900px){
      .hero__wrap{grid-template-columns:1fr;gap:20px;padding:40px 0}
      .cards{grid-template-columns:1fr 1fr}
      .grid{grid-template-columns:1fr 1fr}
      .contact__wrap{grid-template-columns:1fr}
      .nav__links{gap:12px}
    }
    @media (max-width: 580px){
      .cards,.grid{grid-template-columns:1fr}
    }
  </style>
</head>
<body>
  <!-- ===== Header ===== -->
  <header>
    <div class="container nav" role="navigation" aria-label="Päävalikko">
      <a class="brand" href="#top" aria-label="Etusivulle">
        <div class="brand__logo" aria-hidden="true">SW</div>
        <span class="brand__name">Savo Web Design</span>
      </a>
      <nav class="nav__links">
        <a href="#services">Palvelut</a>
        <a href="#portfolio">Portfolio</a>
        <a href="#contact">Yhteystiedot</a>
      </nav>
    </div>
  </header>

  <main id="top">
    <!-- ===== Hero ===== -->
    <section class="hero">
      <div class="container hero__wrap">
        <div>
          <h1>Rauhallista, selkeää ja toimivaa web-suunnittelua.</h1>
          <p>Autan suomalaisia pienyrityksiä saamaan modernit, helposti päivitettävät verkkosivut. Tummanvihreästä inspiroitunut tyyli – selkeä rakenne, nopea lataus ja ymmärrettävä toteutus.</p>
          <a class="cta" href="#contact">Pyydä tarjous</a>
          <div class="hero__card" style="margin-top:16px">
            <small>⏱️ Nopea aloitus • 🧾 Selkeä hinnoittelu • 🔒 Luotettava yhteistyö</small>
          </div>
        </div>
        <div class="hero__img" aria-hidden="true">
          <!-- Voit vaihtaa tämän kuvan omaksi kuvaksesi -->
          <img src="https://images.unsplash.com/photo-1521737604893-d14cc237f11d?q=80&w=1200&auto=format&fit=crop" alt="Tyylikäs työpöytä ja kannettava tietokone" />
        </div>
      </div>
    </section>

    <!-- ===== Palvelut ===== -->
    <section id="services">
      <div class="container">
        <h2 class="section__title">Palvelut</h2>
        <p class="muted">Valitse kevyt paketti tai räätälöity ratkaisu – aina selkeästi hinnoiteltuna.</p>
        <div class="cards">
          <article class="card">
            <h3>Verkkosivut</h3>
            <p>Modernit ja responsiiviset sivut (WordPress tai no‑code). Sisältää perusoptimoinnit.</p>
            <span class="chip">Peruspaketti</span>
          </article>
          <article class="card">
            <h3>IT‑tuki</h3>
            <p>Neuvonta ja apu ohjelmistojen sekä laitteiden kanssa – etänä tai paikan päällä.</p>
            <span class="chip">Tuki & ylläpito</span>
          </article>
          <article class="card">
            <h3>Jatkuva ylläpito</h3>
            <p>Päivitykset, varmuuskopiot ja pienet muutokset kuukausimaksulla.</p>
            <span class="chip">Kuukausipalvelu</span>
          </article>
        </div>
      </div>
    </section>

    <!-- ===== Portfolio ===== -->
    <section id="portfolio">
      <div class="container">
        <h2 class="section__title">Portfolio</h2>
        <p class="muted">Muutama esimerkki toteutuksista ja demoista.</p>
        <div class="grid">
          <article class="work">
            <div class="work__img">
              <img src="https://images.unsplash.com/photo-1555066931-4365d14bab8c?q=80&w=1200&auto=format&fit=crop" alt="Verkkosivun esimerkkikuva 1" />
            </div>
            <div class="work__body">
              <strong>Demo: Pienyrityksen sivu</strong>
              <p>Kevyt ja selkeä etusivu, painotuksena saavutettavuus ja nopeus.</p>
            </div>
            <div class="work__actions">
              <a class="btn-secondary" href="#" aria-label="Avaa demo 1">Avaa demo</a>
            </div>
          </article>
          <article class="work">
            <div class="work__img">
              <img src="https://images.unsplash.com/photo-1522071820081-009f0129c71c?q=80&w=1200&auto=format&fit=crop" alt="Verkkosivun esimerkkikuva 2" />
            </div>
            <div class="work__body">
              <strong>WP: Ravintolan sivut</strong>
              <p>WordPress‑toteutus: valikko, aukioloajat, varauslinkit ja kuvagalleria.</p>
            </div>
            <div class="work__actions">
              <a class="btn-secondary" href="#" aria-label="Avaa projekti 2">Katso projekti</a>
            </div>
          </article>
          <article class="work">
            <div class="work__img">
              <img src="https://images.unsplash.com/photo-1488931269464-d2597f1fe8f8?q=80&w=1200&auto=format&fit=crop" alt="Verkkosivun esimerkkikuva 3" />
            </div>
            <div class="work__body">
              <strong>React‑demo</strong>
              <p>Yksisivuinen sovellus, joka näyttää osaamistasi dynaamisemmissa toteutuksissa.</p>
            </div>
            <div class="work__actions">
              <a class="btn-secondary" href="#" aria-label="Avaa React‑demo">Avaa demo</a>
            </div>
          </article>
        </div>
      </div>
    </section>

    <!-- ===== Yhteydenotto ===== -->
    <section id="contact">
      <div class="container contact__wrap">
        <div>
          <h2 class="section__title">Ota yhteyttä</h2>
          <p class="muted">Kerro lyhyesti projektistasi – vastaan yleensä saman päivän aikana.</p>
          <p class="form__hint">Voit myös lähettää sähköpostia suoraan: <a href="mailto:etunimi.sukunimi@example.com">etunimi.sukunimi@example.com</a></p>
        </div>
        <form onsubmit="event.preventDefault(); alert('Kiitos viestistäsi! Otan yhteyttä pian.');">
          <label>
            <span class="visually-hidden">Nimi</span>
            <input type="text" name="name" placeholder="Nimi" required>
          </label>
          <label>
            <span class="visually-hidden">Sähköposti</span>
            <input type="email" name="email" placeholder="Sähköposti" required>
          </label>
          <label>
            <span class="visually-hidden">Viesti</span>
            <textarea name="message" placeholder="Viesti" required></textarea>
          </label>
          <button class="cta" type="submit">Lähetä</button>
        </form>
      </div>
    </section>
  </main>

  <!-- ===== Footer ===== -->
  <footer>
    <div class="container footer__inner">
      <span>© 2025 Savo Web Design</span>
      <span>Y‑tunnus 1234567‑8</span>
    </div>
  </footer>

  <!-- Pieni apuluokka ruudunlukijoille -->
  <style>
    .visually-hidden{position:absolute!important;height:1px;width:1px;overflow:hidden;clip:rect(1px,1px,1px,1px);white-space:nowrap}
  </style>
</body>
</html>
