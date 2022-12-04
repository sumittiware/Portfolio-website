'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "version.json": "c2a08cda2a1e690bfed5ce9fc4d9e5b1",
"index.html": "ebc3bc3cba4b2c0bc7c3d87ef5fb02ab",
"/": "ebc3bc3cba4b2c0bc7c3d87ef5fb02ab",
"main.dart.js": "7922a824b3ec637df4e1cf9a2523f2d6",
"flutter.js": "f85e6fb278b0fd20c349186fb46ae36d",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"manifest.json": "9d3d57f21e96b6052aaf48bd974ffe62",
"assets/AssetManifest.json": "35f8e65c49ea708508f023174ddf4ce0",
"assets/NOTICES": "135cea6e25da60e7129bc0d653338cac",
"assets/FontManifest.json": "ce9bb84706d7bc6a6549da012130b3a0",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "6d342eb68f170c97609e9da345464e5e",
"assets/packages/font_awesome_flutter/lib/fonts/fa-solid-900.ttf": "dffd9504fcb1894620fa41c700172994",
"assets/packages/font_awesome_flutter/lib/fonts/fa-regular-400.ttf": "4b6a9b7c20913279a3ad3dd9c96e155b",
"assets/packages/font_awesome_flutter/lib/fonts/fa-brands-400.ttf": "00bb2b684be61e89d1bc7d75dee30b58",
"assets/shaders/ink_sparkle.frag": "087dfe7025a15594402174a3dbc5d996",
"assets/fonts/MaterialIcons-Regular.otf": "95db9098c58fd6db106f1116bae85a0b",
"assets/assets/svg/contactme.svg": "a7a3236cab4e345819ad18a94db96d9a",
"assets/assets/title.png": "c665e7c80fb8ab65d610c4724c60f8e2",
"assets/assets/school.jpg": "5749a6a1ee57682aa91e4ff464d756a8",
"assets/assets/school.png": "7a2190f79e368b9a1906599e57016b8b",
"assets/assets/blog/2.jpg": "14992eebfde46f4ed46324b8f80fe21a",
"assets/assets/blog/3.jpg": "6b64c22145af81504235dc5c50e0c9a1",
"assets/assets/blog/1.jpg": "73e004828d4fd4c3c255743838a98cd8",
"assets/assets/project/blog.webp": "345499e8b0abaa8ea3955c846c487083",
"assets/assets/project/crypto.png": "5969d6841549b7764ccfdf4c7ba68aeb",
"assets/assets/project/aniflix.jpeg": "4935468984b22026f9d2dcfaa7152d1d",
"assets/assets/project/wallpaper.png": "440eed153b856510bdbba665df9b7885",
"assets/assets/project/inshort.png": "c51bb21c8e4e07204caf92fc4124358f",
"assets/assets/project/ecom.webp": "df544603907bc9dabd00714800100bc5",
"assets/assets/project/pokedex.png": "43598d72bc50949a1b0b4af2cda51642",
"assets/assets/project/chat_app.png": "895e56507e738ecf828e11ba1d12607c",
"assets/assets/project/7.png": "410e7737569f2023de07a589dbb905a7",
"assets/assets/project/live.png": "7ed26c8ba4782f469ac100fbb2192f9f",
"assets/assets/developer.jpg": "c2e8c057abd0b78b8d98ff1a3063720a",
"assets/assets/profile/profile.jpeg": "ecae3619a5afb7dbc5a970531314cea8",
"assets/assets/icons/pycharm.png": "0b2fc589d32ebb6a34ae4fe684cf5b40",
"assets/assets/icons/git.png": "7db9a1d7f2756233e2f0a14342511ba4",
"assets/assets/icons/adobexd.png": "65b97c908d53e80976d3bd286d9a12fc",
"assets/assets/icons/python.png": "94a629c920c0eec941766a418268d54d",
"assets/assets/icons/flutter.png": "e038d7f55d1c679d7b74a87b6787b6ea",
"assets/assets/icons/cpp.png": "9bde80c47d26ad9ad1cc777b039fe42f",
"assets/assets/icons/github.png": "82d2f9c7315ec5a138e8034d365b4c70",
"assets/assets/icons/firebase.png": "c24b6b9c0fcd84c7b258879880472660",
"assets/assets/icons/android.png": "9f78e2c057a886fbbe8e0f3e37da5993",
"assets/assets/icons/js.png": "e4026aa4a4f8f42ffa578f6c3d59941b",
"assets/assets/icons/spyder.png": "ad48215818a75ecafb96fa2522a99cea",
"assets/assets/icons/vscode.png": "7fc40e2f470447d8bea4d4f870213c84",
"assets/assets/icons/algorithm.png": "92fe761a754352ae24017f87cce487e6",
"assets/assets/icons/astudio.png": "f97460d445fe4572f958e503b0ce2e67",
"assets/assets/icons/node.png": "b197ca4111b781da2225ad89c18c8962",
"assets/assets/icons/postgresql.png": "ea92d6580dda0fbcf61a8ccb16e0d02a",
"assets/assets/icons/django.png": "ca74ae309872fbaca751880953dc3d00",
"assets/assets/icons/postman.png": "4e40d221767b3bc5df99c1acd5c71f3e",
"assets/assets/icons/c.png": "26603f1898814308dced061cf1895cc2",
"assets/assets/icons/blockchain.png": "92bfd2f38765281c7a1b34ff517d3f27",
"assets/assets/icons/ai.png": "172cc3409f637b51e79a066c198e8131",
"assets/assets/icons/dart.png": "53ad3769f6d6f51f75fd3bcab2843cd4",
"assets/assets/icons/kotlin.png": "0b3755818043d853085b0e4363fed0dc",
"assets/assets/portfolio/4.jpg": "5bf69646c9551244814c5bd0775f892c",
"assets/assets/portfolio/5.jpg": "282aa70bdf624a65570dc2302fdf783d",
"assets/assets/portfolio/6.jpg": "4b7973c6f6f8afe5071b9fe4fe360048",
"assets/assets/portfolio/2.jpg": "bb19865727d4e1cf269d387106778f05",
"assets/assets/portfolio/3.jpg": "f8f32f59a495c50c3642bfc79a15a836",
"assets/assets/portfolio/1.jpg": "6484166cd883abed709fda8d4c59824b",
"assets/assets/about.jpg": "af3628b279aa726cdf4da88b088c170c",
"assets/assets/fonts/Poppins-Regular.ttf": "8b6af8e5e8324edfd77af8b3b35d7f9c",
"assets/assets/fonts/Poppins-Bold.ttf": "a3e0b5f427803a187c1b62c5919196aa",
"canvaskit/canvaskit.js": "2bc454a691c631b07a9307ac4ca47797",
"canvaskit/profiling/canvaskit.js": "38164e5a72bdad0faa4ce740c9b8e564",
"canvaskit/profiling/canvaskit.wasm": "95a45378b69e77af5ed2bc72b2209b94",
"canvaskit/canvaskit.wasm": "bf50631470eb967688cca13ee181af62"
};

// The application shell files that are downloaded before a service worker can
// start.
const CORE = [
  "main.dart.js",
"index.html",
"assets/AssetManifest.json",
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
