class Exo < Formula
  include Language::Python::Virtualenv

  desc "Run your own AI cluster at home with everyday devices️"
  homepage "https://github.com/exo-explore/exo"
  url "https://github.com/exo-explore/exo/archive/refs/tags/v0.0.15-alpha.tar.gz"
  sha256 "c06f987ce63d4593b255f3231d29183fd79e2dffbc90e80497a8c30cbb592577"
  license "GPL-3.0-only"

  depends_on "pkg-config" => :build
  depends_on "rust" => :build # for pydantic
  depends_on arch: :arm64
  depends_on "libyaml"
  depends_on :macos
  depends_on "mlx"
  depends_on "numpy"
  depends_on "opencv"
  depends_on "pillow"
  depends_on "python@3.13"

  resource "aiofiles" do
    url "https://files.pythonhosted.org/packages/0b/03/a88171e277e8caa88a4c77808c20ebb04ba74cc4681bf1e9416c862de237/aiofiles-24.1.0.tar.gz"
    sha256 "22a075c9e5a3810f0c2e48f3008c94d68c65d763b9b03857924c99e57355166c"
  end

  resource "aiohappyeyeballs" do
    url "https://files.pythonhosted.org/packages/26/30/f84a107a9c4331c14b2b586036f40965c128aa4fee4dda5d3d51cb14ad54/aiohappyeyeballs-2.6.1.tar.gz"
    sha256 "c3f9d0113123803ccadfdf3f0faa505bc78e6a72d1cc4806cbd719826e943558"
  end

  resource "aiohttp" do
    url "https://files.pythonhosted.org/packages/25/a8/8e2ba36c6e3278d62e0c88aa42bb92ddbef092ac363b390dab4421da5cf5/aiohttp-3.10.11.tar.gz"
    sha256 "9dc2b8f3dcab2e39e0fa309c8da50c3b55e6f34ab25f1a71d3288f24924d33a7"
  end

  resource "aiohttp-cors" do
    url "https://files.pythonhosted.org/packages/44/9e/6cdce7c3f346d8fd487adf68761728ad8cd5fbc296a7b07b92518350d31f/aiohttp-cors-0.7.0.tar.gz"
    sha256 "4d39c6d7100fd9764ed1caf8cebf0eb01bf5e3f24e2e073fda6234bc48b19f5d"
  end

  resource "aiosignal" do
    url "https://files.pythonhosted.org/packages/ba/b5/6d55e80f6d8a08ce22b982eafa278d823b541c925f11ee774b0b9c43473d/aiosignal-1.3.2.tar.gz"
    sha256 "a8c255c66fafb1e499c9351d0bf32ff2d8a0321595ebac3b93713656d2436f54"
  end

  resource "annotated-types" do
    url "https://files.pythonhosted.org/packages/ee/67/531ea369ba64dcff5ec9c3402f9f51bf748cec26dde048a2f973a4eea7f5/annotated_types-0.7.0.tar.gz"
    sha256 "aff07c09a53a08bc8cfccb9c85b05f1aa9a2a6f23728d790723543408344ce89"
  end

  resource "attrs" do
    url "https://files.pythonhosted.org/packages/5a/b0/1367933a8532ee6ff8d63537de4f1177af4bff9f3e829baf7331f595bb24/attrs-25.3.0.tar.gz"
    sha256 "75d7cefc7fb576747b2c81b4442d4d4a1ce0900973527c011d1030fd3bf4af1b"
  end

  resource "certifi" do
    url "https://files.pythonhosted.org/packages/1c/ab/c9f1e32b7b1bf505bf26f0ef697775960db7932abeb7b516de930ba2705f/certifi-2025.1.31.tar.gz"
    sha256 "3d5da6925056f6f18f119200434a4780a94263f10d1c21d032a6f6b2baa20651"
  end

  resource "charset-normalizer" do
    url "https://files.pythonhosted.org/packages/16/b0/572805e227f01586461c80e0fd25d65a2115599cc9dad142fee4b747c357/charset_normalizer-3.4.1.tar.gz"
    sha256 "44251f18cd68a75b56585dd00dae26183e102cd5e0f9f1466e6df5da2ed64ea3"
  end

  resource "filelock" do
    url "https://files.pythonhosted.org/packages/0a/10/c23352565a6544bdc5353e0b15fc1c563352101f30e24bf500207a54df9a/filelock-3.18.0.tar.gz"
    sha256 "adbc88eabb99d2fec8c9c1b229b171f18afa655400173ddc653d5d01501fb9f2"
  end

  resource "frozenlist" do
    url "https://files.pythonhosted.org/packages/8f/ed/0f4cec13a93c02c47ec32d81d11c0c1efbadf4a471e3f3ce7cad366cbbd3/frozenlist-1.5.0.tar.gz"
    sha256 "81d5af29e61b9c8348e876d442253723928dce6433e0e76cd925cd83f1b4b817"
  end

  resource "fsspec" do
    url "https://files.pythonhosted.org/packages/45/d8/8425e6ba5fcec61a1d16e41b1b71d2bf9344f1fe48012c2b48b9620feae5/fsspec-2025.3.2.tar.gz"
    sha256 "e52c77ef398680bbd6a98c0e628fbc469491282981209907bbc8aea76a04fdc6"
  end

  resource "grpcio" do
    url "https://files.pythonhosted.org/packages/d5/da/132615afbfc722df4bba963844843a205aa298fd5f9a03fa2995e8dddf11/grpcio-1.68.0.tar.gz"
    sha256 "7e7483d39b4a4fddb9906671e9ea21aaad4f031cdfc349fec76bdfa1e404543a"
  end

  resource "grpcio-tools" do
    url "https://files.pythonhosted.org/packages/81/40/47299f96fc21b9cd448cbebcbf174b1bedeaa1f82a1e7d4ed144d084d002/grpcio_tools-1.68.0.tar.gz"
    sha256 "737804ec2225dd4cc27e633b4ca0e963b0795161bf678285fab6586e917fd867"
  end

  resource "huggingface-hub" do
    url "https://files.pythonhosted.org/packages/df/22/8eb91736b1dcb83d879bd49050a09df29a57cc5cd9f38e48a4b1c45ee890/huggingface_hub-0.30.2.tar.gz"
    sha256 "9a7897c5b6fd9dad3168a794a8998d6378210f5b9688d0dfc180b1a228dc2466"
  end

  resource "idna" do
    url "https://files.pythonhosted.org/packages/f1/70/7703c29685631f5a7590aa73f1f1d3fa9a380e654b86af429e0934a32f7d/idna-3.10.tar.gz"
    sha256 "12f65c9b470abda6dc35cf8e63cc574b1c52b11df2c86030af0ac09b01b13ea9"
  end

  resource "jinja2" do
    url "https://files.pythonhosted.org/packages/ed/55/39036716d19cab0747a5020fc7e907f362fbf48c984b14e62127f7e68e5d/jinja2-3.1.4.tar.gz"
    sha256 "4a3aee7acbbe7303aede8e9648d13b8bf88a429282aa6122a993f0ac800cb369"
  end

  resource "markdown-it-py" do
    url "https://files.pythonhosted.org/packages/38/71/3b932df36c1a044d397a1f92d1cf91ee0a503d91e470cbd670aa66b07ed0/markdown-it-py-3.0.0.tar.gz"
    sha256 "e3f60a94fa066dc52ec76661e37c851cb232d92f9886b15cb560aaada2df8feb"
  end

  resource "markupsafe" do
    url "https://files.pythonhosted.org/packages/b2/97/5d42485e71dfc078108a86d6de8fa46db44a1a9295e89c5d6d4a06e23a62/markupsafe-3.0.2.tar.gz"
    sha256 "ee55d3edf80167e48ea11a923c7386f4669df67d7994554387f84e7d8b0a2bf0"
  end

  resource "mdurl" do
    url "https://files.pythonhosted.org/packages/d6/54/cfe61301667036ec958cb99bd3efefba235e65cdeb9c84d24a8293ba1d90/mdurl-0.1.2.tar.gz"
    sha256 "bb413d29f5eea38f31dd4754dd7377d4465116fb207585f97bf925588687c1ba"
  end

  resource "mlx-lm" do
    url "https://files.pythonhosted.org/packages/06/3a/125adb6e677795129ee932d189bac031253ebfcebaa1df559bdd4f0671b6/mlx_lm-0.21.1.tar.gz"
    sha256 "701d4d1de92785cc24e651a28d46894df567187711cc994c88cb7247f3d1cde0"
  end

  resource "multidict" do
    url "https://files.pythonhosted.org/packages/82/4a/7874ca44a1c9b23796c767dd94159f6c17e31c0e7d090552a1c623247d82/multidict-6.2.0.tar.gz"
    sha256 "0085b0afb2446e57050140240a8595846ed64d1cbd26cef936bfab3192c673b8"
  end

  resource "nuitka" do
    url "https://files.pythonhosted.org/packages/fb/35/dae04ffd525a49a736489264d07d86aee324c6b3995ced8eaf819915e86b/Nuitka-2.5.1.tar.gz"
    sha256 "5fec9404a04de124b8d0094a6ebbc69cf63e30f0982b8dbd4618bec48a5288c5"
  end

  resource "nvidia-ml-py" do
    url "https://files.pythonhosted.org/packages/53/10/5f34de4a71db8b2b7ec4269f4a33287f24c23e2857ea3187c977b7bc3604/nvidia-ml-py-12.560.30.tar.gz"
    sha256 "f0254dc7400647680a072ee02509bfd46102b60bdfeca321576d4d4817e7fe97"
  end

  resource "ordered-set" do
    url "https://files.pythonhosted.org/packages/4c/ca/bfac8bc689799bcca4157e0e0ced07e70ce125193fc2e166d2e685b7e2fe/ordered-set-4.1.0.tar.gz"
    sha256 "694a8e44c87657c59292ede72891eb91d34131f6531463aab3009191c77364a8"
  end

  resource "packaging" do
    url "https://files.pythonhosted.org/packages/d0/63/68dbb6eb2de9cb10ee4c9c14a0148804425e13c4fb20d61cce69f53106da/packaging-24.2.tar.gz"
    sha256 "c228a6dc5e932d346bc5739379109d49e8853dd8223571c7c5b55260edc0b97f"
  end

  resource "prometheus-client" do
    url "https://files.pythonhosted.org/packages/3d/39/3be07741a33356127c4fe633768ee450422c1231c6d34b951fee1458308d/prometheus_client-0.20.0.tar.gz"
    sha256 "287629d00b147a32dcb2be0b9df905da599b2d82f80377083ec8463309a4bb89"
  end

  resource "propcache" do
    url "https://files.pythonhosted.org/packages/07/c8/fdc6686a986feae3541ea23dcaa661bd93972d3940460646c6bb96e21c40/propcache-0.3.1.tar.gz"
    sha256 "40d980c33765359098837527e18eddefc9a24cea5b45e078a7f3bb5b032c6ecf"
  end

  resource "protobuf" do
    url "https://files.pythonhosted.org/packages/3c/0b/7a997c8939f698d72bdea14d57116e43d3051fffb3b2964c30938c4a08e6/protobuf-5.28.1.tar.gz"
    sha256 "42597e938f83bb7f3e4b35f03aa45208d49ae8d5bcb4bc10b9fc825e0ab5e423"
  end

  resource "psutil" do
    url "https://files.pythonhosted.org/packages/18/c7/8c6872f7372eb6a6b2e4708b88419fb46b857f7a2e1892966b851cc79fc9/psutil-6.0.0.tar.gz"
    sha256 "8faae4f310b6d969fa26ca0545338b21f73c6b15db7c4a8d934a5482faa818f2"
  end

  resource "pydantic" do
    url "https://files.pythonhosted.org/packages/a9/b7/d9e3f12af310e1120c21603644a1cd86f59060e040ec5c3a80b8f05fae30/pydantic-2.9.2.tar.gz"
    sha256 "d155cef71265d1e9807ed1c32b4c8deec042a44a50a4188b25ac67ecd81a9c0f"
  end

  resource "pydantic-core" do
    url "https://files.pythonhosted.org/packages/e2/aa/6b6a9b9f8537b872f552ddd46dd3da230367754b6f707b8e1e963f515ea3/pydantic_core-2.23.4.tar.gz"
    sha256 "2584f7cf844ac4d970fba483a717dbe10c1c1c96a969bf65d61ffe94df1b2863"
  end

  resource "pygments" do
    url "https://files.pythonhosted.org/packages/7c/2d/c3338d48ea6cc0feb8446d8e6937e1408088a72a39937982cc6111d17f84/pygments-2.19.1.tar.gz"
    sha256 "61c16d2a8576dc0649d9f39e089b5f02bcd27fba10d8fb4dcc28173f7a45151f"
  end

  resource "pyyaml" do
    url "https://files.pythonhosted.org/packages/54/ed/79a089b6be93607fa5cdaedf301d7dfb23af5f25c398d5ead2525b063e17/pyyaml-6.0.2.tar.gz"
    sha256 "d584d9ec91ad65861cc08d42e834324ef890a082e591037abe114850ff7bbc3e"
  end

  resource "regex" do
    url "https://files.pythonhosted.org/packages/8e/5f/bd69653fbfb76cf8604468d3b4ec4c403197144c7bfe0e6a5fc9e02a07cb/regex-2024.11.6.tar.gz"
    sha256 "7ab159b063c52a0333c884e4679f8d7a85112ee3078fe3d9004b2dd875585519"
  end

  resource "requests" do
    url "https://files.pythonhosted.org/packages/63/70/2bf7780ad2d390a8d301ad0b550f1581eadbd9a20f896afe06353c2a2913/requests-2.32.3.tar.gz"
    sha256 "55365417734eb18255590a9ff9eb97e9e1da868d4ccd6402399eaf68af20a760"
  end

  resource "rich" do
    url "https://files.pythonhosted.org/packages/b3/01/c954e134dc440ab5f96952fe52b4fdc64225530320a910473c1fe270d9aa/rich-13.7.1.tar.gz"
    sha256 "9be308cb1fe2f1f57d67ce99e95af38a1e2bc71ad9813b0e247cf7ffbcc3a432"
  end

  resource "safetensors" do
    url "https://files.pythonhosted.org/packages/71/7e/2d5d6ee7b40c0682315367ec7475693d110f512922d582fef1bd4a63adc3/safetensors-0.5.3.tar.gz"
    sha256 "b6b0d6ecacec39a4fdd99cc19f4576f5219ce858e6fd8dbe7609df0b8dc56965"
  end

  resource "scapy" do
    url "https://files.pythonhosted.org/packages/df/2f/035d3888f26d999e9680af8c7ddb7ce4ea0fd8d0e01c000de634c22dcf13/scapy-2.6.1.tar.gz"
    sha256 "7600d7e2383c853e5c3a6e05d37e17643beebf2b3e10d7914dffcc3bc3c6e6c5"
  end

  resource "setuptools" do
    url "https://files.pythonhosted.org/packages/a9/5a/0db4da3bc908df06e5efae42b44e75c81dd52716e10192ff36d0c1c8e379/setuptools-78.1.0.tar.gz"
    sha256 "18fd474d4a82a5f83dac888df697af65afa82dec7323d09c3e37d1f14288da54"
  end

  resource "tinygrad" do
    url "https://files.pythonhosted.org/packages/fe/b1/5555df29138dabe90c1ac225f0e925af007f4a8d48006cc09d5cd94e8638/tinygrad-0.10.0.tar.gz"
    sha256 "24412219a1467c49892b35e61f283f5992b128539e90743df465af33408e73e7"
  end

  resource "tokenizers" do
    url "https://files.pythonhosted.org/packages/da/25/b1681c1c30ea3ea6e584ae3fffd552430b12faa599b558c4c4783f56d7ff/tokenizers-0.20.3.tar.gz"
    sha256 "2278b34c5d0dd78e087e1ca7f9b1dcbf129d80211afa645f214bd6e051037539"
  end

  resource "tqdm" do
    url "https://files.pythonhosted.org/packages/5a/c0/b7599d6e13fe0844b0cda01b9aaef9a0e87dbb10b06e4ee255d3fa1c79a2/tqdm-4.66.4.tar.gz"
    sha256 "e4d936c9de8727928f3be6079590e97d9abfe8d39a590be678eb5919ffc186bb"
  end

  resource "transformers" do
    url "https://files.pythonhosted.org/packages/37/5a/58f96c83e566f907ae39f16d4401bbefd8bb85c60bd1e6a95c419752ab90/transformers-4.46.3.tar.gz"
    sha256 "8ee4b3ae943fe33e82afff8e837f4b052058b07ca9be3cb5b729ed31295f72cc"
  end

  resource "typing-extensions" do
    url "https://files.pythonhosted.org/packages/76/ad/cd3e3465232ec2416ae9b983f27b9e94dc8171d56ac99b345319a9475967/typing_extensions-4.13.1.tar.gz"
    sha256 "98795af00fb9640edec5b8e31fc647597b4691f099ad75f469a2616be1a76dff"
  end

  resource "urllib3" do
    url "https://files.pythonhosted.org/packages/aa/63/e53da845320b757bf29ef6a9062f5c669fe997973f966045cb019c3f4b66/urllib3-2.3.0.tar.gz"
    sha256 "f8c5449b3cf0861679ce7e0503c7b44b5ec981bec0d1d3795a07f1ba96f0204d"
  end

  resource "uuid" do
    url "https://files.pythonhosted.org/packages/ce/63/f42f5aa951ebf2c8dac81f77a8edcc1c218640a2a35a03b9ff2d4aa64c3d/uuid-1.30.tar.gz"
    sha256 "1f87cc004ac5120466f36c5beae48b4c48cc411968eed0eaecd3da82aa96193f"
  end

  resource "uvloop" do
    url "https://files.pythonhosted.org/packages/af/c0/854216d09d33c543f12a44b393c402e89a920b1a0a7dc634c42de91b9cf6/uvloop-0.21.0.tar.gz"
    sha256 "3bf12b0fda68447806a7ad847bfa591613177275d35b6724b1ee573faa3704e3"
  end

  resource "yarl" do
    url "https://files.pythonhosted.org/packages/fc/4d/8a8f57caccce49573e567744926f88c6ab3ca0b47a257806d1cf88584c5f/yarl-1.19.0.tar.gz"
    sha256 "01e02bb80ae0dbed44273c304095295106e1d9470460e773268a27d11e594892"
  end

  resource "zstandard" do
    url "https://files.pythonhosted.org/packages/ed/f6/2ac0287b442160a89d726b17a9184a4c615bb5237db763791a7fd16d9df1/zstandard-0.23.0.tar.gz"
    sha256 "b2d8c62d08e7255f68f7a740bae85b3c9b8e5466baa9cbf7f57f1cde0ac6bc09"
  end

  def install
    virtualenv_install_with_resources
  end

  test do
    output = shell_output("#{bin}/exo --help")
    assert_match "usage:", output
  end
end
