'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"flutter.js": "7d69e653079438abfbb24b82a655b0a4",
"manifest.json": "b28bcf82e4dc934bedda1a63e843a738",
"index.html": "2383f042c07ab3503cdb7ac845b488f4",
"/": "2383f042c07ab3503cdb7ac845b488f4",
"assets/AssetManifest.bin": "b17e6c77e7c6c259569430224772cb65",
"assets/fonts/MaterialIcons-Regular.otf": "0d0360dbcb22400141f3323e7dbcb845",
"assets/assets/images/Header-image.png": "001f259a60296b9f740412524e454380",
"assets/assets/images/medium_3.png": "3d1b4e3323c378c30a4321a8847916cf",
"assets/assets/images/Banner.png": "457e6aa702d6bc011b09025db9a1e4ce",
"assets/assets/images/medium_1.png": "f96d69b8627e29fcd10be1e4b0c4832e",
"assets/assets/images/featured%2520_items_1.png": "caf670c44d4f8f1ebac8115ed86b0a36",
"assets/assets/images/big_1.png": "e367821300188d370b544d8cb4731660",
"assets/assets/images/big_3.png": "e80fa7fe1b522c75adf79d265ab36cd2",
"assets/assets/images/big_4.png": "bcffe4b8694d454e57d7f86cb4c28f9e",
"assets/assets/images/big_2.png": "a01e1ca605e3683da32fcd5a917901eb",
"assets/assets/images/featured%2520_items_3.png": "a8bf5a1b883f376ec3c8b8c8a6899656",
"assets/assets/images/medium_4.png": "098e1e3c45ec0294e116b91ceb26678a",
"assets/assets/images/medium_2.png": "382124ea5afa24239564d3d879504e5c",
"assets/assets/images/featured%2520_items_2.png": "f2c8382f470e458bff86fd83a5755f35",
"assets/assets/Illustrations/Illustrations_1.svg": "fd1fe56da29dc38149ef379679dddebf",
"assets/assets/Illustrations/Illustrations_3.svg": "2f3d0557ab9b67549b944b556a63b24b",
"assets/assets/Illustrations/Illustrations_2.svg": "1b0977210bd07d2595f0612958c9fa33",
"assets/assets/icons/plus.svg": "322729c6dfb5d96117d92cddaa66a54f",
"assets/assets/icons/document.svg": "b952cf7d22fb67a5c728dce6db01b8aa",
"assets/assets/icons/close.svg": "2202ce4bbeee7214a19d1e94deb26977",
"assets/assets/icons/camera.svg": "7df8f1a8f4093f0a9c35010867595eaa",
"assets/assets/icons/phone.svg": "d18dc880f675eeea558bd758f0dc8e5d",
"assets/assets/icons/notify.svg": "fc5f025d3d68087e981f14ee04377316",
"assets/assets/icons/fb.svg": "1832b9fb9239dfcd727cbda7b21348f2",
"assets/assets/icons/location.svg": "b9ae812b40b691d223f41aef82fff4dd",
"assets/assets/icons/profile.svg": "c6537da2829422d0fb470a1fd75fa826",
"assets/assets/icons/food.svg": "132cbc19e4f3374f4b3a3bd2eb582dda",
"assets/assets/icons/logout.svg": "1c8015b72433b26fcb479503dec9dfb2",
"assets/assets/icons/card.svg": "d0685597b16ec048e1d6e9583905768d",
"assets/assets/icons/invisible.svg": "317332eb44c38e51e88fc1aebdf76182",
"assets/assets/icons/rating.svg": "fe483b4c3c937acb9791d83b0cd7ff90",
"assets/assets/icons/search.svg": "8314e36878fde12b279628bab7768a62",
"assets/assets/icons/minus.svg": "8e28e165ecb98df7d1f49790b46fffd8",
"assets/assets/icons/fast-delivery.svg": "28a81a0d709812f94832ccdf3d1ea77c",
"assets/assets/icons/recomended.svg": "2aec27c5105802a41bcf53c2929eb042",
"assets/assets/icons/clock.svg": "9a565e4875b8a9caddfee74b7e23d1e7",
"assets/assets/icons/share.svg": "8b80f6ea1d8fe945b7985f4ca42bbdbe",
"assets/assets/icons/forward.svg": "f9c107053af5ecdb57cabda6a06d9b2c",
"assets/assets/icons/delivery.svg": "e90fd958d410cde7f16b9b91f7b2aa1f",
"assets/assets/icons/facebook.svg": "8f2f6bec8489880b161b3ea83a7ef450",
"assets/assets/icons/cart.svg": "62765576e891e6f08611c245e690f29a",
"assets/assets/icons/back.svg": "017d74eb9568057d15651ff2221f61de",
"assets/assets/icons/google.svg": "09aea0f59807f6f4f66af7f5719cba9e",
"assets/assets/icons/fire.svg": "912bae8ec4cf82821bd5f046142d6911",
"assets/assets/icons/done.svg": "c31fb8e84178a7a396fcfd5c32f7516b",
"assets/assets/icons/order.svg": "359ff181492524bc9c783c427200b903",
"assets/assets/icons/marker.svg": "5e25930e71d11928c709175ef3726b12",
"assets/assets/icons/home.svg": "a7e76c32d48960853373b956b890badc",
"assets/assets/icons/visible.svg": "16fdd42bbfdd2622357424333fd5d6a7",
"assets/assets/icons/lock.svg": "456422aad9fff8b81ba0fc07a5a49761",
"assets/AssetManifest.bin.json": "342bca84b50663f1b8661cf7c3b655c5",
"assets/FontManifest.json": "dc3d03800ccca4601324923c0b1d6d57",
"assets/shaders/ink_sparkle.frag": "4096b5150bac93c41cbc9b45276bd90f",
"assets/NOTICES": "ea00b1733a11a2410d70f96584b32f10",
"assets/AssetManifest.json": "ab17fbe165f93728864b32a381ae892a",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "89ed8f4e49bcdfc0b5bfc9b24591e347",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"main.dart.js": "60b888e5c6a2d4a5130b185509daa91a",
"version.json": "129b12b2a0cf6b63660c47979cb1dfdb",
"canvaskit/canvaskit.wasm": "73584c1a3367e3eaf757647a8f5c5989",
"canvaskit/skwasm.js": "87063acf45c5e1ab9565dcf06b0c18b8",
"canvaskit/skwasm.wasm": "2fc47c0a0c3c7af8542b601634fe9674",
"canvaskit/skwasm.worker.js": "bfb704a6c714a75da9ef320991e88b03",
"canvaskit/canvaskit.js": "eb8797020acdbdf96a12fb0405582c1b",
"canvaskit/chromium/canvaskit.wasm": "143af6ff368f9cd21c863bfa4274c406",
"canvaskit/chromium/canvaskit.js": "0ae8bbcc58155679458a0f7a00f66873",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
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
