'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"assets/AssetManifest.bin": "7320cee8369cf6dc78802178a34fc7e3",
"assets/AssetManifest.bin.json": "c089f1127a7f2dc2aecc1d36d2fd424a",
"assets/AssetManifest.json": "bbb184892f0fd3bd849e5b8a721c7cb9",
"assets/assets/code.svg": "9d68e182f13fc2cc89678b0da8f8b27a",
"assets/assets/db.svg": "10333afe21802cb06c2aac4856043f72",
"assets/assets/Equipo_DVR.jpg": "01c2f42e641aec8115c2812eb6298c46",
"assets/assets/Hardware1.jpeg": "c9e960ca5ec2c2f55dcd3b17762184ff",
"assets/assets/Hardware2.jpeg": "6e3f5e9f5c656add11611a7d0238b7a1",
"assets/assets/Hardware3.jpeg": "248433ffda8938da3a9ce625d6e5dfcd",
"assets/assets/idea.svg": "82cfa5b92878cc7ab0802090bf4305a5",
"assets/assets/img1.jpg": "23a52f666f561a1fbd9e25ddff3a4393",
"assets/assets/img2.jpg": "6621afa81f07348c9bb6a1a590cc83cb",
"assets/assets/img4.png": "f6087b1e0a7276de61ad0a6639cb59c4",
"assets/assets/Isologotipo.svg": "8a245199e2cfedd544bdd8b37010bc15",
"assets/assets/IsologotipoBlanco.svg": "9800cc479c3fa9c80b795aa43f1f99a2",
"assets/assets/love.svg": "ec7f5047d24aa34bd31c79eee3b62022",
"assets/assets/pc.svg": "b6c30e061c1ed3395532c69f75ec84f5",
"assets/assets/PC_Bios1.jpg": "23eae0bfd30761dee598deac9970a666",
"assets/assets/PC_Bios2.jpg": "8487034fb47a4c50984601fa99db09cc",
"assets/assets/PC_Bisagra1.jpg": "d8707b761ece2e53274376665f215d75",
"assets/assets/PC_Bisagra2.jpg": "1a8642aaa18d5552ef629d9fd5e6c054",
"assets/assets/PC_Bisagra3.jpg": "5fb8c60239999446eb68200e05469af1",
"assets/assets/PC_Caddy1.jpg": "a41c5702918c1bb161bf008e36f9f3c8",
"assets/assets/PC_Caddy2.jpg": "e3b5b94c514d3354f748d4ec29a66f16",
"assets/assets/PC_Escritorio2.jpg": "193d85d3693e5cd1fca812d69c55689b",
"assets/assets/PC_Escritorio3.jpg": "807bd44a602106aec98263efd7897b8c",
"assets/assets/PC_Escritorio4.jpg": "b9e38443fe41bda8bf15b7b11644faed",
"assets/assets/PC_Portatil10.jpg": "3992c0492fb4cabcfd41a803df48327f",
"assets/assets/PC_Portatil16.jpg": "8042298f9534ab9df192476e2246246f",
"assets/assets/PC_Portatil17.jpg": "b754eaf38653489cf5ddc82326c2af52",
"assets/assets/PC_Portatil19.jpg": "727f3abc04d39c205f70abb32e1d29df",
"assets/assets/PC_Portatil20.jpg": "1eee5035e40fb5572679702064902ba0",
"assets/assets/PC_Portatil3.jpg": "9dd4887ec7bc6aa101e7e45763490d41",
"assets/assets/PC_Portatil4.jpg": "2f2c73fa1eb668265aea5816d3f18e60",
"assets/assets/PC_Portatil5.jpg": "bbf06dc986b266f476be4ae1b8a4fa28",
"assets/assets/PC_Portatil7.jpg": "33b5630b623d0c6c9a4f1e988ef7c9d7",
"assets/assets/PC_Portatil8.jpg": "7359686dbffdbe63b18c0e81aaa67123",
"assets/assets/PC_Portatil9.jpg": "7a4ba2db2a5148507f11237bc2177bd0",
"assets/assets/placeholder.png": "12d0fc4905551fb8949f19bd771a932d",
"assets/assets/red.svg": "f3bed168116a318465665eef277f4f1b",
"assets/assets/target.svg": "444e74d15f486daa0ba681522c0893eb",
"assets/FontManifest.json": "1b1e7812d9eb9f666db8444d7dde1b20",
"assets/fonts/MaterialIcons-Regular.otf": "c0ad29d56cfe3890223c02da3c6e0448",
"assets/NOTICES": "e84c0ce2d779c8c947341545a5b476be",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "33b7d9392238c04c131b6ce224e13711",
"assets/packages/material_design_icons_flutter/lib/fonts/materialdesignicons-webfont.ttf": "3759b2f7a51e83c64a58cfe07b96a8ee",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"canvaskit/canvaskit.js": "6cfe36b4647fbfa15683e09e7dd366bc",
"canvaskit/canvaskit.js.symbols": "68eb703b9a609baef8ee0e413b442f33",
"canvaskit/canvaskit.wasm": "efeeba7dcc952dae57870d4df3111fad",
"canvaskit/chromium/canvaskit.js": "ba4a8ae1a65ff3ad81c6818fd47e348b",
"canvaskit/chromium/canvaskit.js.symbols": "5a23598a2a8efd18ec3b60de5d28af8f",
"canvaskit/chromium/canvaskit.wasm": "64a386c87532ae52ae041d18a32a3635",
"canvaskit/skwasm.js": "f2ad9363618c5f62e813740099a80e63",
"canvaskit/skwasm.js.symbols": "80806576fa1056b43dd6d0b445b4b6f7",
"canvaskit/skwasm.wasm": "f0dfd99007f989368db17c9abeed5a49",
"canvaskit/skwasm_st.js": "d1326ceef381ad382ab492ba5d96f04d",
"canvaskit/skwasm_st.js.symbols": "c7e7aac7cd8b612defd62b43e3050bdd",
"canvaskit/skwasm_st.wasm": "56c3973560dfcbf28ce47cebe40f3206",
"favicon.png": "3afa0d4685b06282ee7fe8ea27eeb3f5",
"flutter.js": "76f08d47ff9f5715220992f993002504",
"flutter_bootstrap.js": "ed560de947609628423cb875de4201cc",
"icons/Icon-192.png": "3b48e8981038494643695e323c95ab96",
"icons/Icon-512.png": "773335582f58b475bd773282b5d3bbac",
"icons/Icon-maskable-192.png": "3b48e8981038494643695e323c95ab96",
"icons/Icon-maskable-512.png": "ecc42b32997f10d21f5c0d5783898425",
"index.html": "47e86ca84be32d9db6c758a139be01b7",
"/": "47e86ca84be32d9db6c758a139be01b7",
"main.dart.js": "151ce3bab8dec0e2a8e7d0bd92502c16",
"manifest.json": "3487e65e20c04e6c610b6d73deaf1e7d",
"version.json": "d485f6e363fc7127c8072fa1c0625eb2"};
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
