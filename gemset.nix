{
  addressable = {
    dependencies = ["public_suffix"];
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "022r3m9wdxljpbya69y2i3h9g3dhhfaqzidf95m6qjzms792jvgp";
      type = "gem";
    };
    version = "2.8.0";
  };
  adsf = {
    dependencies = ["rack"];
    groups = ["develop"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1s6my1ba838wjc2ii4x8fyabsyqs3jl60vdrgagzdjd2w423gghg";
      type = "gem";
    };
    version = "1.4.6";
  };
  coderay = {
    groups = ["default" "nanoc"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0jvxqxzply1lwp7ysn94zjhh57vc14mcshw1ygw14ib8lhc00lyw";
      type = "gem";
    };
    version = "1.1.3";
  };
  colored = {
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0b0x5jmsyi0z69bm6sij1k89z7h0laag3cb4mdn7zkl9qmxb90lx";
      type = "gem";
    };
    version = "1.2";
  };
  concurrent-ruby = {
    groups = ["default" "nanoc"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0nwad3211p7yv9sda31jmbyw6sdafzmdi2i2niaz6f0wk5nq9h0f";
      type = "gem";
    };
    version = "1.1.9";
  };
  cri = {
    groups = ["default" "nanoc"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1bhsgnjav94mz5vf3305gxz1g34gm9kxvnrn1dkz530r8bpj0hr5";
      type = "gem";
    };
    version = "2.15.11";
  };
  ddmemoize = {
    dependencies = ["ddmetrics" "ref"];
    groups = ["default" "nanoc"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "15ylhhfhd35zlr0wzcc069h0sishrfn27m0q54lf7ih092mccb6l";
      type = "gem";
    };
    version = "1.0.0";
  };
  ddmetrics = {
    groups = ["default" "nanoc"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0in0hk546q3js6qghbifjqvab6clyx5fjrwd3lcb0mk1ihmadyn2";
      type = "gem";
    };
    version = "1.0.1";
  };
  ddplugin = {
    groups = ["default" "nanoc"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "14hbvr6qjcn1i6pin8rq9kr02f98imskhrl8k53117mlfxxhl9sv";
      type = "gem";
    };
    version = "1.0.3";
  };
  diff-lcs = {
    groups = ["default" "nanoc"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0m925b8xc6kbpnif9dldna24q1szg4mk0fvszrki837pfn46afmz";
      type = "gem";
    };
    version = "1.4.4";
  };
  ffi = {
    groups = ["default" "nanoc"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0ssxcywmb3flxsjdg13is6k01807zgzasdhj4j48dm7ac59cmksn";
      type = "gem";
    };
    version = "1.15.4";
  };
  formatador = {
    groups = ["default" "nanoc"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0mprf1dwznz5ld0q1jpbyl59fwnwk6azspnd0am7zz7kfg3pxhv5";
      type = "gem";
    };
    version = "0.3.0";
  };
  guard = {
    dependencies = ["formatador" "listen" "lumberjack" "nenv" "notiffany" "pry" "shellany" "thor"];
    groups = ["default" "nanoc"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1zqy994fr0pf3pda0x3mmkhgnfg4hd12qp5bh1s1xm68l00viwhj";
      type = "gem";
    };
    version = "2.18.0";
  };
  guard-compat = {
    groups = ["default" "nanoc"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1zj6sr1k8w59mmi27rsii0v8xyy2rnsi09nqvwpgj1q10yq1mlis";
      type = "gem";
    };
    version = "1.2.1";
  };
  guard-nanoc = {
    dependencies = ["guard" "guard-compat" "nanoc-cli" "nanoc-core"];
    groups = ["nanoc"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1whi9i9b4ffqs7awsjjrlpaq2gi5846yks1fy6s30pg50chn73ah";
      type = "gem";
    };
    version = "2.1.9";
  };
  hamster = {
    dependencies = ["concurrent-ruby"];
    groups = ["default" "nanoc"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1n1lsh96vnyc1pnzyd30f9prcsclmvmkdb3nm5aahnyizyiy6lar";
      type = "gem";
    };
    version = "3.0.0";
  };
  json_schema = {
    groups = ["default" "nanoc"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0nzcnb9j7bbj3nc6izwlsxky8j4xly345qzfg5v5n6550kqfmqfn";
      type = "gem";
    };
    version = "0.21.0";
  };
  kramdown = {
    dependencies = ["rexml"];
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0jdbcjv4v7sj888bv3vc6d1dg4ackkh7ywlmn9ln2g9alk7kisar";
      type = "gem";
    };
    version = "2.3.1";
  };
  listen = {
    dependencies = ["rb-fsevent" "rb-inotify"];
    groups = ["default" "nanoc"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0ncfhdkjiwq9l1pm87ax2pa20kz2j0dz56vi74cnr5a6cfk0qb5p";
      type = "gem";
    };
    version = "3.7.0";
  };
  lumberjack = {
    groups = ["default" "nanoc"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "06pybb23hypc9gvs2p839ildhn26q68drb6431ng3s39i3fkkba8";
      type = "gem";
    };
    version = "1.2.8";
  };
  method_source = {
    groups = ["default" "nanoc"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1pnyh44qycnf9mzi1j6fywd5fkskv3x7nmsqrrws0rjn5dd4ayfp";
      type = "gem";
    };
    version = "1.0.0";
  };
  mini_portile2 = {
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1lvxm91hi0pabnkkg47wh1siv56s6slm2mdq1idfm86dyfidfprq";
      type = "gem";
    };
    version = "2.6.1";
  };
  nanoc = {
    dependencies = ["addressable" "colored" "nanoc-checking" "nanoc-cli" "nanoc-core" "nanoc-deploying" "parallel" "tty-command" "tty-which"];
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "15cgn5vpb2y7fy7qlibhinv63l23x2ya99yyqz8r157pvkfvwral";
      type = "gem";
    };
    version = "4.12.3";
  };
  nanoc-checking = {
    dependencies = ["nanoc-cli" "nanoc-core"];
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "09bdmvq90s2pbxlala8ami6w2zb1zlqjhm69wn7wwxzh3kp2r9js";
      type = "gem";
    };
    version = "1.0.1";
  };
  nanoc-cli = {
    dependencies = ["cri" "diff-lcs" "nanoc-core" "zeitwerk"];
    groups = ["default" "nanoc"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0j9bk7w8pwwscg8mg993qjzy8gxr1bbayrp5bxlkmih9kmknhg4n";
      type = "gem";
    };
    version = "4.12.3";
  };
  nanoc-core = {
    dependencies = ["concurrent-ruby" "ddmemoize" "ddmetrics" "ddplugin" "hamster" "json_schema" "slow_enumerator_tools" "tty-platform" "zeitwerk"];
    groups = ["default" "nanoc"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1g0x1j8q4h9rqdrlabj226w0wsdqri72hrjz74fr0jjwhcmgi3mf";
      type = "gem";
    };
    version = "4.12.3";
  };
  nanoc-deploying = {
    dependencies = ["nanoc-checking" "nanoc-cli" "nanoc-core"];
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "02l19qjsaj9rn1iw8fkpc1dmccgniggd4r7xvpsvvdl4nlrl56sq";
      type = "gem";
    };
    version = "1.0.1";
  };
  nenv = {
    groups = ["default" "nanoc"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0r97jzknll9bhd8yyg2bngnnkj8rjhal667n7d32h8h7ny7nvpnr";
      type = "gem";
    };
    version = "0.3.0";
  };
  nokogiri = {
    dependencies = ["mini_portile2" "racc"];
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1v02g7k7cxiwdcahvlxrmizn3avj2q6nsjccgilq1idc89cr081b";
      type = "gem";
    };
    version = "1.12.5";
  };
  notiffany = {
    dependencies = ["nenv" "shellany"];
    groups = ["default" "nanoc"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0f47h3bmg1apr4x51szqfv3rh2vq58z3grh4w02cp3bzbdh6jxnk";
      type = "gem";
    };
    version = "0.1.3";
  };
  pandoc-ruby = {
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1y7i5f2i67n1j91vnc2gwscjc1z7k1axfl2hbsk4y30y2k1qam94";
      type = "gem";
    };
    version = "2.1.4";
  };
  parallel = {
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1hkfpm78c2vs1qblnva3k1grijvxh87iixcnyd83s3lxrxsjvag4";
      type = "gem";
    };
    version = "1.21.0";
  };
  pastel = {
    dependencies = ["tty-color"];
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0xash2gj08dfjvq4hy6l1z22s5v30fhizwgs10d6nviggpxsj7a8";
      type = "gem";
    };
    version = "0.8.0";
  };
  pry = {
    dependencies = ["coderay" "method_source"];
    groups = ["default" "nanoc"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0m445x8fwcjdyv2bc0glzss2nbm1ll51bq45knixapc7cl3dzdlr";
      type = "gem";
    };
    version = "0.14.1";
  };
  public_suffix = {
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1xqcgkl7bwws1qrlnmxgh8g4g9m10vg60bhlw40fplninb3ng6d9";
      type = "gem";
    };
    version = "4.0.6";
  };
  racc = {
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0la56m0z26j3mfn1a9lf2l03qx1xifanndf9p3vx1azf6sqy7v9d";
      type = "gem";
    };
    version = "1.6.0";
  };
  rack = {
    groups = ["default" "develop"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0i5vs0dph9i5jn8dfc6aqd6njcafmb20rwqngrf759c9cvmyff16";
      type = "gem";
    };
    version = "2.2.3";
  };
  rb-fsevent = {
    groups = ["default" "nanoc"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1qsx9c4jr11vr3a9s5j83avczx9qn9rjaf32gxpc2v451hvbc0is";
      type = "gem";
    };
    version = "0.11.0";
  };
  rb-inotify = {
    dependencies = ["ffi"];
    groups = ["default" "nanoc"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1jm76h8f8hji38z3ggf4bzi8vps6p7sagxn3ab57qc0xyga64005";
      type = "gem";
    };
    version = "0.10.1";
  };
  ref = {
    groups = ["default" "nanoc"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "04p4pq4sikly7pvn30dc7v5x2m7fqbfwijci4z1y6a1ilwxzrjii";
      type = "gem";
    };
    version = "2.0.0";
  };
  rexml = {
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "08ximcyfjy94pm1rhcx04ny1vx2sk0x4y185gzn86yfsbzwkng53";
      type = "gem";
    };
    version = "3.2.5";
  };
  rubypants = {
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0kv2way45d2dz3h5b7wxyw36clvlwrz7ydf6699d0za5vm56gsrh";
      type = "gem";
    };
    version = "0.7.1";
  };
  sass = {
    dependencies = ["sass-listen"];
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0p95lhs0jza5l7hqci1isflxakz83xkj97lkvxl919is0lwhv2w0";
      type = "gem";
    };
    version = "3.7.4";
  };
  sass-listen = {
    dependencies = ["rb-fsevent" "rb-inotify"];
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0xw3q46cmahkgyldid5hwyiwacp590zj2vmswlll68ryvmvcp7df";
      type = "gem";
    };
    version = "4.0.0";
  };
  shellany = {
    groups = ["default" "nanoc"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1ryyzrj1kxmnpdzhlv4ys3dnl2r5r3d2rs2jwzbnd1v96a8pl4hf";
      type = "gem";
    };
    version = "0.0.1";
  };
  slow_enumerator_tools = {
    groups = ["default" "nanoc"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0phfj4jxymxf344cgksqahsgy83wfrwrlr913mrsq2c33j7mj6p6";
      type = "gem";
    };
    version = "1.1.0";
  };
  terminal-notifier = {
    groups = ["develop"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1slc0y8pjpw30hy21v8ypafi8r7z9jlj4bjbgz03b65b28i2n3bs";
      type = "gem";
    };
    version = "2.0.0";
  };
  terminal-notifier-guard = {
    groups = ["develop"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0hcpqljmlgs4z54n48dwks8h49q4h7k4jvcf8ah1p4zrbsqirck6";
      type = "gem";
    };
    version = "1.7.0";
  };
  thor = {
    groups = ["default" "nanoc"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "18yhlvmfya23cs3pvhr1qy38y41b6mhr5q9vwv5lrgk16wmf3jna";
      type = "gem";
    };
    version = "1.1.0";
  };
  tty-color = {
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0aik4kmhwwrmkysha7qibi2nyzb4c8kp42bd5vxnf8sf7b53g73g";
      type = "gem";
    };
    version = "0.6.0";
  };
  tty-command = {
    dependencies = ["pastel"];
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "14hi8xiahfrrnydw6g3i30lxvvz90wp4xsrlhx8mabckrcglfv0c";
      type = "gem";
    };
    version = "0.10.1";
  };
  tty-platform = {
    groups = ["default" "nanoc"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "02h58a8yg2kzybhqqrhh4lfdl9nm0i62nd9jrvwinjp802qkffg2";
      type = "gem";
    };
    version = "0.3.0";
  };
  tty-which = {
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0rpljdwlfm4qgps2xvq6306w86fm057m89j4gizcji371mgha92q";
      type = "gem";
    };
    version = "0.5.0";
  };
  typogruby = {
    dependencies = ["rubypants"];
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0j7kd1jlpa2n2xk5cm63yzj1fbvhralw6ca3zm1br5pn2r3pd82h";
      type = "gem";
    };
    version = "1.0.18";
  };
  zeitwerk = {
    groups = ["default" "nanoc"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "18l4r6layck0d80ydc692mv1lxak5xbf6w2paj1x7m2ggbggzxgj";
      type = "gem";
    };
    version = "2.5.1";
  };
}
