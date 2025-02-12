'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"flutter_bootstrap.js": "3f789588e29b27073b1e024e6a26b594",
"version.json": "9b818ca9511483c901bed1545384376c",
"index.html": "6b2eb6c1b58079d5cfd0bcce2d614cae",
"/": "6b2eb6c1b58079d5cfd0bcce2d614cae",
"main.dart.js": "37256a8a4fd5bb020f10c400e7e6bd05",
"flutter.js": "f393d3c16b631f36852323de8e583132",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"manifest.json": "e2b9103aaafaf8ed9f90576c9d9a1341",
".git/ORIG_HEAD": "f1b8cedcc093602e116517e48a7a57f1",
".git/config": "607727e80c9abdc451a6ad51a0a336fe",
".git/objects/61/df29e3ccf069df1b983f70caf9ad24be2952e3": "74658314462b25257ea2a74ba7466615",
".git/objects/95/13783ed92bdfac7a2d9410ac95eb91857049a8": "803b425762f62290c7023e2687d16906",
".git/objects/59/7749ba0dc37f60635c3ad1e2b682dd37a8d3eb": "b0d936ab9aa64a62ef75ade6b6fcade4",
".git/objects/68/dc59c3de8f4cfb3b7280c96188522c7297eafc": "0de9c94a1ba9504ad545ab0646366410",
".git/objects/6f/0d039d995a6d133b823a283ebe821daed7ab47": "202e9f5dcc8c0c8fb2ee10c5616cce19",
".git/objects/03/d5a3b1946ae73c33abc5e421615c8a07c6e006": "35afe56c3537cfaaefa3ca9faab9d374",
".git/objects/32/aa3cae58a7432051fc105cc91fca4d95d1d011": "4f8558ca16d04c4f28116d3292ae263d",
".git/objects/32/deec44af26e43743979835da9eefd2ed245e60": "50a2d2231f65b32b0e46071b77e40c71",
".git/objects/35/8e5ef51b9024ceb77fc247b686ebe925653cbc": "8f479fa5f8efb8644bb87ad77412d8a8",
".git/objects/33/a326e2a640d6a3cf879526bea9f56457288ba9": "52603dcc077491f18aa823743f3e3dbf",
".git/objects/9d/8ef30ff09360a5c88df9c595422e9916c9b7a7": "6e0df0f351ef70672eb6bf46144186d6",
".git/objects/a4/7a955310b804ca81e078fd40df5fcfbfd5db0c": "0ccb1654f59565d453c0eae71478a04c",
".git/objects/b2/5e9bb5c418c572ea1b080c930d6619b997cb31": "c4f0e23a0c251411088363b4e87ee2ff",
".git/objects/ac/3f3c858b34e2ac58fafbc3e52541566bed0ee3": "a7ecfa7de731202b14ebc6f3462a90ee",
".git/objects/ac/4a058d7aa87fcaa9ddfe839dc489deb5e431ae": "68ac24fbde08976b461f21d1a2cdbf1a",
".git/objects/bb/874251e19a44db590a4fed9146c20bf4ebffe8": "0462ad92dd869208f020784f541d372c",
".git/objects/d0/23371979cf1e985205df19078051c10de0a82d": "700b71074bad7afee32068791dec7442",
".git/objects/b3/c77026d482043bfc8e601fce86e8cd698c1c35": "2743aa821f7f61fac144527fc508e499",
".git/objects/da/fd65422747502c19b5c74b4230282644d2169c": "d8a62caf99a372ff6c7692e143787ce3",
".git/objects/bd/acf81c9873ccb7c97a398f9e1167fbf1831654": "6f95616821efd3925e1c25134304ff35",
".git/objects/d6/9c56691fbdb0b7efa65097c7cc1edac12a6d3e": "868ce37a3a78b0606713733248a2f579",
".git/objects/bc/41b7ac1a48ae9baf761360e31c2f404a501291": "02d3d4edd92cdacc13fec28be3b50215",
".git/objects/bc/d38d240da7d3537340b9620257c2ef89a3268f": "98d7cc2dbac9654ba671958d2575ce24",
".git/objects/f3/bcb3193dc1a69c0195dfeb6597f19264e68341": "2c4dd286ef3911239b8554d25116765a",
".git/objects/eb/9b4d76e525556d5d89141648c724331630325d": "37c0954235cbe27c4d93e74fe9a578ef",
".git/objects/fc/1802e23d62f35e889cbe232fd01f7513461a96": "8d1af72664488b7ea07ef60277fd5293",
".git/objects/fc/a6b7fd46dc0b8ac9cff84e0972503e9ce61db0": "f56edc852e582868ec8f9497728624ca",
".git/objects/f2/04823a42f2d890f945f70d88b8e2d921c6ae26": "6b47f314ffc35cf6a1ced3208ecc857d",
".git/objects/fe/7f330218d16d96c0ed272a1fd27e7042b37af6": "72852719ea777f36cc3a1b4f8468504f",
".git/objects/ed/6fab5f0bfec0864e2d0718c146f9ebde7ab898": "9878ba9adb579e1565705e4b8f54e74b",
".git/objects/ed/3bb1c1cb6ae9ec5775bdb443f70276e67f03c7": "de614569afd58befd0b07aaf69f5ed45",
".git/objects/c1/272a3c6145fd70e44afb72fe82bd748f8b64ff": "de4d284ef055130f4cf9a4b6ea5a84e3",
".git/objects/18/81c19a24ac95af91abded02e8e470b81415cb9": "c7ac117357e623c7abd81bede2138291",
".git/objects/4b/9eae79149f44f47d19157a2bb7952d7bf3e7da": "5248c96adfbc652d92805d37beb4ae42",
".git/objects/7d/202547e6b1b1669663cd731ad51fa07569e61f": "07d31557ec6e031f64d756ce504a812c",
".git/objects/7c/5fad7ecfa740b9d7cc46f470696905c21660f0": "93c580180d155f44147e1f6744e4ec18",
".git/objects/7c/e2dd0f2aeb5c3724e612b43c32db5d346a1520": "79a65cb195cf9a2a57cfed8e9c8db7f8",
".git/objects/16/5e28d316b9f24d2f41d2a391b92e26af0f4a76": "43756a7e773c5ec2bfe06c4a9f6cb051",
".git/objects/45/9a281009b6507d0049cdcedfa7647ab086efe2": "c9274c10ea27b8fc6c6a518f7d5cac0a",
".git/objects/1f/45b5bcaac804825befd9117111e700e8fcb782": "7a9d811fd6ce7c7455466153561fb479",
".git/objects/87/8dbfdb459165bd6deb483307d54a4a90ab417c": "3ea183080333f3d84895084dd9d32517",
".git/objects/7b/0160bd3e4250c1c6951c472eac80e6822741b2": "a9f06afccaf6e85ad5106f3c2bcd29a6",
".git/objects/8f/d93bcd1ad510420c6ec5b98628be48c1cddd2d": "96b59ab0e387d727ff4df7b9d734f78e",
".git/objects/8a/aa46ac1ae21512746f852a42ba87e4165dfdd1": "1d8820d345e38b30de033aa4b5a23e7b",
".git/objects/4c/37ea0ec757d7156a2f511861fb435b58dd226f": "59a0aeec5498de66b6c74643225357d1",
".git/objects/81/0c7ef1f756a62a447ec2ffb5a6f3c34b422612": "f0805e1fee26e2ed3c0ec48ab10f0241",
".git/objects/44/a8b8e41b111fcf913a963e318b98e7f6976886": "5014fdb68f6b941b7c134a717a3a2bc6",
".git/objects/88/cfd48dff1169879ba46840804b412fe02fefd6": "e42aaae6a4cbfbc9f6326f1fa9e3380c",
".git/objects/9f/de47b766152a710dbb3e95f397eba18626b495": "7c0589ece8d3441ee9e4a62e9fca5108",
".git/objects/6b/e909fbf40b23748412f0ea89bf0fae827ed976": "5f118419157d9534688915220cc803f7",
".git/objects/5c/0f45cf38c5796581376b6be03b5fe9409d1903": "0be60df2d2a28ca7597cb7dad65ee970",
".git/objects/91/5a8747b3de8bb8ae060c1e3a1e7dda84da48ea": "3455904339f635d158ce44a0c3b5f4d6",
".git/objects/3a/7525f2996a1138fe67d2a0904bf5d214bfd22c": "ab6f2f6356cba61e57d5c10c2e18739d",
".git/objects/3a/16e6acff5e1350210c69442d9982bbfccbab87": "dc7ad27dc45dcbc2c1e56864d375b03c",
".git/objects/98/57c9b3b0448c92818efc5fda0f206b21914168": "ecbde07c564dabbec0f249821051b8af",
".git/objects/5e/091d8c07529ca6ac9d08ae263bfe9f61dbc8a7": "681d5446b46e4b94971327a9a7b85a89",
".git/objects/08/32d0db2def1613c1c45aa4fe9156a1c6b7d589": "e05df183e5eeaddf39672a2516f9c41d",
".git/objects/6d/030e7db3585185fd40f1d3860c456378322571": "69958e3450ac6b4e2baca023dc386053",
".git/objects/6d/bc29f67b39fc603b4fe1352997b17e2703e451": "992180f8d8eb0313422555ea41aeddb6",
".git/objects/52/896f461139823daf687cc35421b4042e303fbc": "63a42eee682858c78a1735754a5479b4",
".git/objects/0f/1979596b903653e065b971270459ab2c5d73b0": "5e021e0b3c2ea40b428d65df6aa85ddf",
".git/objects/0a/5d5fe830bc2604bf1d8f31ec1a52a5839517f2": "2d98040ff5f2368255d87dd25a859f68",
".git/objects/90/bcfcf0a77ab618a826db0fd8b0942963b653af": "fc109675cdf1233dd6599a4c3c0a7a69",
".git/objects/90/ecb4c17516a21a833b431b210d8c7053b9e7b8": "f0101aa080859d37c93dee682161a1ba",
".git/objects/d4/3532a2348cc9c26053ddb5802f0e5d4b8abc05": "3dad9b209346b1723bb2cc68e7e42a44",
".git/objects/ba/5317db6066f0f7cfe94eec93dc654820ce848c": "9b7629bf1180798cf66df4142eb19a4e",
".git/objects/b1/5ad935a6a00c2433c7fadad53602c1d0324365": "8f96f41fe1f2721c9e97d75caa004410",
".git/objects/a9/cd27a5b42d5758ae4d98979323c94ceba243e2": "f1de4fb8c1ec7ef9227002bf2032850d",
".git/objects/d5/865f195f4e93a48075ec5e6639dfa08bb32655": "f77bb992611873a3201c199e90183c57",
".git/objects/d2/758863b91dd7e2a3464389c8b958b38a3dea0a": "0f12b6ac3bf6fd63e3866c0ce7df21e4",
".git/objects/b7/49bfef07473333cf1dd31e9eed89862a5d52aa": "36b4020dca303986cad10924774fb5dc",
".git/objects/a6/e1963958e7fd98f63e39e6ad7b8bb41f399f74": "5590bd7abfd2b9f3add9937a763389ec",
".git/objects/b9/2a0d854da9a8f73216c4a0ef07a0f0a44e4373": "f62d1eb7f51165e2a6d2ef1921f976f3",
".git/objects/b9/0efadfd3b29e71449fe720b0d503d3a71e78fc": "1e1acdc2ff3aebde051a6ce6c0c9315c",
".git/objects/e1/4f7e48647e1554a65c07b1ffbd602b91fde820": "02871f80168e846e2de4e7dc73211b4b",
".git/objects/cc/916506b4ca6b4c1c2e3e32d0be93e2374f4eb5": "ed3f4952db9e5bef38b5ed50b0208b7a",
".git/objects/f9/f2bbd7e72cd64bea5937c2d9c85b1f6f300c89": "4d65048a7b5262539b54ca2e27268ae3",
".git/objects/fa/a2c0ec2d4b75b76956300b63fd7512057b4dbd": "a02d4ce463b35cfd958aa44fd2e3a390",
".git/objects/e9/c0b5b445b7fbaa20c3b78e04e9fd428297b831": "607af35f0d23580d0b856bd967519290",
".git/objects/46/4ab5882a2234c39b1a4dbad5feba0954478155": "2e52a767dc04391de7b4d0beb32e7fc4",
".git/objects/2d/280859eb02408e0cb2644980c76ba130250ad1": "779e5f9aa674fb1c315dc55bca0119e1",
".git/objects/48/069fc4c82ac734928066969cb507c70ea7fa05": "69d26686370cba50f0283fcda30a4d11",
".git/objects/84/0516208d35dcb4298847ab835e2ef84ada92fa": "36a4a870d8d9c1c623d8e1be329049da",
".git/objects/4a/0d8649b3d7a33178c7cb5b77322b624678303c": "ec4cad7dd63d9742dc8334669e138d43",
".git/objects/4f/1dc03b73f21d0f0579556f329e8546f30f057f": "956e4b17b026680a9e349b409105d980",
".git/objects/8d/66a7ccac3687da21fb7e363c931a39147610bf": "77f632934442742f4a5e5ebb35c2565c",
".git/objects/15/9c51041b1db625bcd23b8bb71ecbaac005d72b": "ff0197b43cbf4e925d302fe586ff3b5a",
".git/objects/85/6a39233232244ba2497a38bdd13b2f0db12c82": "eef4643a9711cce94f555ae60fecd388",
".git/objects/2e/5d657b528b02a54e0ae65354b3ac5d78dbde8d": "33388f2413e4fce3176e464ab751d910",
".git/objects/25/8b3eee70f98b2ece403869d9fe41ff8d32b7e1": "05e38b9242f2ece7b4208c191bc7b258",
".git/HEAD": "cf7dd3ce51958c5f13fece957cc417fb",
".git/info/exclude": "036208b4a1ab4a235d75c181e685e5a3",
".git/logs/HEAD": "95d957bc18c7472333c5bb8ee999572c",
".git/logs/refs/heads/main": "ff15d54a01b77da5409fc2cdda4aa8bd",
".git/logs/refs/remotes/origin/main": "8fd4ac479a974c9ed3bd1656c9f07e2c",
".git/description": "a0a7c3fff21f2aea3cfa1d0316dd816c",
".git/hooks/commit-msg.sample": "579a3c1e12a1e74a98169175fb913012",
".git/hooks/pre-rebase.sample": "56e45f2bcbc8226d2b4200f7c46371bf",
".git/hooks/pre-commit.sample": "e4db8c12ee125a8a085907b757359ef0",
".git/hooks/applypatch-msg.sample": "ce562e08d8098926a3862fc6e7905199",
".git/hooks/fsmonitor-watchman.sample": "ecbb0cb5ffb7d773cd5b2407b210cc3b",
".git/hooks/pre-receive.sample": "2ad18ec82c20af7b5926ed9cea6aeedd",
".git/hooks/prepare-commit-msg.sample": "2b5c047bdb474555e1787db32b2d2fc5",
".git/hooks/post-update.sample": "2b7ea5cee3c49ff53d41e00785eb974c",
".git/hooks/pre-merge-commit.sample": "39cb268e2a85d436b9eb6f47614c3cbc",
".git/hooks/pre-applypatch.sample": "054f9ffb8bfe04a599751cc757226dda",
".git/hooks/pre-push.sample": "3c5989301dd4b949dfa1f43738a22819",
".git/hooks/update.sample": "517f14b9239689dff8bda3022ebd9004",
".git/refs/heads/main": "e4d1ed85feda2877c22927273a04080f",
".git/refs/remotes/origin/main": "e4d1ed85feda2877c22927273a04080f",
".git/index": "c8ca48013a6552603672fb100cc079b0",
".git/COMMIT_EDITMSG": "91c744e8de429682d819ffa1e61feb60",
".git/FETCH_HEAD": "133620b5b92e87e4bb4b22674f7b8260",
"assets/AssetManifest.json": "a8608340421e1cb7ce71e8200dd5174a",
"assets/NOTICES": "03c113d3341b7320af8f80d0f603a380",
"assets/FontManifest.json": "dc3d03800ccca4601324923c0b1d6d57",
"assets/AssetManifest.bin.json": "1ffaa4fbc5b610218e19aa7c1f86d3f4",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "e986ebe42ef785b27164c36a9abc7818",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"assets/AssetManifest.bin": "3d0cc5e69aff8dd5c10c319165a6ac75",
"assets/fonts/MaterialIcons-Regular.otf": "d9b3c449ccf5c0081da00cf0e8d853af",
"assets/assets/telegram.png": "d940cd7b5e7b66510b59785177c6414f",
"assets/assets/git.png": "87a955816509ce7ca810ca8157d69586",
"assets/assets/docker.png": "722cafb6c71b44bba6292a603b2e198c",
"assets/assets/python.png": "e04382338533c6bb0dcfc7a48bf86502",
"assets/assets/instagram.png": "02c7721e097a6bb001d00fa61750bc81",
"assets/assets/flutter.png": "abe34b0551ded954f6759cada7807e3e",
"assets/assets/projects/project3.jpeg": "44133969c7761a92c002461fdc11bfba",
"assets/assets/projects/project2.jpeg": "58e73e296c7abb5dbc98e17eb7a5b411",
"assets/assets/projects/project5.jpeg": "54e8191f81854c1b5158b393cdb857b6",
"assets/assets/projects/project4.jpeg": "7c9a032ec1d973e5f3f19c0064128694",
"assets/assets/projects/project6.jpeg": "28665bed96646e25b1ded0db0bf52c47",
"assets/assets/projects/project1.jpeg": "94dc12ee10fb04ae87817706adeef8ca",
"assets/assets/android_icon.png": "038ea15b40a395099451862327ebcfc1",
"assets/assets/github.png": "7aed3646cbea181a3da85620809e992c",
"assets/assets/desktop_icon.png": "e0e90a080a776fd1da23f5a249b5ce3c",
"assets/assets/java.png": "cf498cd199eb53190d4c18e23135fb74",
"assets/assets/web_icon.png": "8867144689b70d099377ee3c4ab1baa0",
"assets/assets/twitter.png": "7bd42d85ad4082df05ebf7643faf1585",
"assets/assets/linkedin.png": "e4d142586676a80b3927d899d3584148",
"assets/assets/profile_Img.jpeg": "134f581e4aa91559ea0c46f1dfdf0bb7",
"assets/assets/ios_icon.png": "4b8039e8a442657c7b9b379322eb2793",
"assets/assets/facebook.png": "fa74fe1619d75d68df1f0db7c654e39a",
"assets/assets/dart.png": "1a089616e2be1ac7c5188c00225772c8",
"assets/assets/html5.png": "9d5b22bfe74ac513d5cd33563908ae71",
"assets/assets/kotlin.png": "038ea9adaa133e1f83653ccdb1164d57",
"canvaskit/skwasm.js": "694fda5704053957c2594de355805228",
"canvaskit/skwasm.js.symbols": "262f4827a1317abb59d71d6c587a93e2",
"canvaskit/canvaskit.js.symbols": "48c83a2ce573d9692e8d970e288d75f7",
"canvaskit/skwasm.wasm": "9f0c0c02b82a910d12ce0543ec130e60",
"canvaskit/chromium/canvaskit.js.symbols": "a012ed99ccba193cf96bb2643003f6fc",
"canvaskit/chromium/canvaskit.js": "671c6b4f8fcc199dcc551c7bb125f239",
"canvaskit/chromium/canvaskit.wasm": "b1ac05b29c127d86df4bcfbf50dd902a",
"canvaskit/canvaskit.js": "66177750aff65a66cb07bb44b8c6422b",
"canvaskit/canvaskit.wasm": "1f237a213d7370cf95f443d896176460",
"canvaskit/skwasm.worker.js": "89990e8c92bcb123999aa81f7e203b1c"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"flutter_bootstrap.js",
"assets/AssetManifest.bin.json",
"assets/FontManifest.json"];

// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});
// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        // Claim client to enable caching on first launch
        self.clients.claim();
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      // Claim client to enable caching on first launch
      self.clients.claim();
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});
// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache only if the resource was successfully fetched.
        return response || fetch(event.request).then((response) => {
          if (response && Boolean(response.ok)) {
            cache.put(event.request, response.clone());
          }
          return response;
        });
      })
    })
  );
});
self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});
// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}
// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
