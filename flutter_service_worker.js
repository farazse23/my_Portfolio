'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"assets/AssetManifest.bin": "29cfb69171168d95d631b497e4dd6812",
"assets/AssetManifest.bin.json": "3d42ef4c62f02460fa052409a819d950",
"assets/AssetManifest.json": "f3d3f110d26efe571c99e3ce2a838733",
"assets/assets/android.png": "f3f62505de0766a4e362c7cb5df84bfb",
"assets/assets/app-store.png": "671cd61a346b8e679de2d8a6d4d44f4a",
"assets/assets/bgavatar.png": "b43f9b5007f2890ceaffc890398d4e53",
"assets/assets/css-3.png": "b848d5d9bb221592064de0f356f61676",
"assets/assets/facebook.png": "8c89ef8ab45d47ae9a954822532889f7",
"assets/assets/github.png": "1b9b9f71269e504156ce9d89a00f2551",
"assets/assets/html-5.png": "945d8320b2991e7345ea0dda5ee1b6bb",
"assets/assets/hugo.png": "1ef415ff7e6beced00a74dade52b672f",
"assets/assets/icons8-dart-48.png": "918e7c35823c7ad268ba831c6e7eaa64",
"assets/assets/icons8-flutter-48.png": "8efb797d33c586ef3cb71d4083dd1fdb",
"assets/assets/img.png": "ff4cc9d62c24c8462dcfb075739a4254",
"assets/assets/img_1.png": "dc80d59754ccee2ba2f57a629baf9124",
"assets/assets/instagram.png": "5c570427ee23f69853d28aec805eee79",
"assets/assets/java-script.png": "d9de75e5bf3a7b0ef2a48321acc06e88",
"assets/assets/linkedin.png": "d492efc706db983e74258dbd348f2208",
"assets/assets/pc.png": "3aa0a4ca08893876e8a83a08f19f0f40",
"assets/assets/projects/3d.png": "63c5c26777a8dc06b8f9cbb452f00826",
"assets/assets/projects/cal.jpg": "0ad1e38cc8453cb8bd9311ac67ff84a8",
"assets/assets/projects/qr.png": "a8bbc4f35b278591cdbc0ed095871f2c",
"assets/assets/projects/shooping.png": "bc646b8e4d99f88feb46e4877cb72af3",
"assets/assets/projects/translator.jpg": "986c1f945cd53f6abb16e8104bf92161",
"assets/assets/projects/whats.png": "386c1eac4156d382db879a42647bd33e",
"assets/assets/shopify.png": "a4ea300c7aaff9c73215a4d755dc3341",
"assets/assets/social.png": "1cddbcf397acdf1a565539718eb86fd2",
"assets/assets/user.png": "6f6bbb16aec97391aefe120ec5a4e6a2",
"assets/assets/web.png": "db044c108bd30950a0e67c0392e93143",
"assets/assets/wordpress.png": "ecda6d28d94d9fac2a5fc59d37153581",
"assets/FontManifest.json": "dc3d03800ccca4601324923c0b1d6d57",
"assets/fonts/MaterialIcons-Regular.otf": "7ad8dc14f3d8cffd84dfedebf03d9548",
"assets/NOTICES": "fc0caef691b35e711a0acdc345eeef7d",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "33b7d9392238c04c131b6ce224e13711",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"canvaskit/canvaskit.js": "728b2d477d9b8c14593d4f9b82b484f3",
"canvaskit/canvaskit.js.symbols": "bdcd3835edf8586b6d6edfce8749fb77",
"canvaskit/canvaskit.wasm": "7a3f4ae7d65fc1de6a6e7ddd3224bc93",
"canvaskit/chromium/canvaskit.js": "8191e843020c832c9cf8852a4b909d4c",
"canvaskit/chromium/canvaskit.js.symbols": "b61b5f4673c9698029fa0a746a9ad581",
"canvaskit/chromium/canvaskit.wasm": "f504de372e31c8031018a9ec0a9ef5f0",
"canvaskit/skwasm.js": "ea559890a088fe28b4ddf70e17e60052",
"canvaskit/skwasm.js.symbols": "e72c79950c8a8483d826a7f0560573a1",
"canvaskit/skwasm.wasm": "39dd80367a4e71582d234948adc521c0",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"flutter.js": "83d881c1dbb6d6bcd6b42e274605b69c",
"flutter_bootstrap.js": "51fabec2b4fe3171c9db0f9a550d847f",
"icons/android-chrome-192x192.png": "3ec99b0313240e9aa5272c5237f21123",
"icons/android-chrome-512x512.png": "858ad6f9630ed8148db8233d6eba9352",
"icons/apple-touch-icon.png": "0f7b5a299ceddfc472486f7d50f1ff2a",
"index.html": "b5f1387c0412721e2c8f84715e9be0c5",
"/": "b5f1387c0412721e2c8f84715e9be0c5",
"logo.png": "3ec99b0313240e9aa5272c5237f21123",
"main.dart.js": "47c714fd8491ce91443199a83ae6a0f8",
"manifest.json": "9b687c4cbf0c41306abcb19d7f897bea",
"version.json": "9b818ca9511483c901bed1545384376c"};
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
