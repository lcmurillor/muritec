'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"assets/AssetManifest.bin": "7320cee8369cf6dc78802178a34fc7e3",
"assets/AssetManifest.bin.json": "c089f1127a7f2dc2aecc1d36d2fd424a",
"assets/AssetManifest.json": "bbb184892f0fd3bd849e5b8a721c7cb9",
"assets/assets/code.svg": "9d68e182f13fc2cc89678b0da8f8b27a",
"assets/assets/db.svg": "10333afe21802cb06c2aac4856043f72",
"assets/assets/Equipo_DVR.jpg": "ae01f22a695193353ed782d5ba8a5893",
"assets/assets/Hardware1.jpeg": "37542baa70ec9acc70372933e9f28073",
"assets/assets/Hardware2.jpeg": "4b01ca413cb96218e7b33999519831cc",
"assets/assets/Hardware3.jpeg": "e77adb393006dbe0447bf353189f6599",
"assets/assets/idea.svg": "82cfa5b92878cc7ab0802090bf4305a5",
"assets/assets/img1.jpg": "f4f03cb4b1455e139d537b5a3c7ef2af",
"assets/assets/img2.jpg": "e3a0971ecd6ae12e1db70aefb2a029ee",
"assets/assets/img4.png": "a2af3c6cf647e236ccbb16f5db84a469",
"assets/assets/Isologotipo.svg": "8a245199e2cfedd544bdd8b37010bc15",
"assets/assets/IsologotipoBlanco.svg": "9800cc479c3fa9c80b795aa43f1f99a2",
"assets/assets/love.svg": "ec7f5047d24aa34bd31c79eee3b62022",
"assets/assets/pc.svg": "b6c30e061c1ed3395532c69f75ec84f5",
"assets/assets/PC_Bios1.jpg": "e82cdb44a2957f4afe8078723e2acdff",
"assets/assets/PC_Bios2.jpg": "f840b16020e97ccd0e9b76f87000369d",
"assets/assets/PC_Bisagra1.jpg": "e97e83556caae89399f19f123a6b2f25",
"assets/assets/PC_Bisagra2.jpg": "4d2c90ad24a3152f283c34e07721febf",
"assets/assets/PC_Bisagra3.jpg": "6ee5e683503c028272f50c4177b1918c",
"assets/assets/PC_Caddy1.jpg": "1a6c09acfd315a1b7f5f51ccaed0cb11",
"assets/assets/PC_Caddy2.jpg": "e87d28284ffabab6278b8148669933f6",
"assets/assets/PC_Escritorio2.jpg": "9e3bc04538d02a3e496c4297fa574576",
"assets/assets/PC_Escritorio3.jpg": "0949e8f4855a4bb58e50918ae24fd721",
"assets/assets/PC_Escritorio4.jpg": "d78211f0a11553fbef9fdcef894a5898",
"assets/assets/PC_Portatil10.jpg": "df80a04e8db1750aba8259e05605347b",
"assets/assets/PC_Portatil16.jpg": "8380658fae8fa44c5df8a3d33e472a65",
"assets/assets/PC_Portatil17.jpg": "399fef5b7a26932f98d0ab0e6918aa93",
"assets/assets/PC_Portatil19.jpg": "947ce1dc50b0d5487632b2f21bc421c4",
"assets/assets/PC_Portatil20.jpg": "f795559dabc49033c4bf7e6b8be5ec5a",
"assets/assets/PC_Portatil3.jpg": "a4f920b11496b86d3de40c479ba7997f",
"assets/assets/PC_Portatil4.jpg": "1832e20eef5496759642af722ad81950",
"assets/assets/PC_Portatil5.jpg": "c0f3b565d902f2ed9a86aa044a65032b",
"assets/assets/PC_Portatil7.jpg": "6da54ef50b16602c6780d75ebc852a57",
"assets/assets/PC_Portatil8.jpg": "1a4b42a8e0a3ea0c78de62a192e0fcf1",
"assets/assets/PC_Portatil9.jpg": "05adcd456f974edf7b11eeb2d53f507f",
"assets/assets/placeholder.png": "12d0fc4905551fb8949f19bd771a932d",
"assets/assets/red.svg": "f3bed168116a318465665eef277f4f1b",
"assets/assets/target.svg": "444e74d15f486daa0ba681522c0893eb",
"assets/FontManifest.json": "1b1e7812d9eb9f666db8444d7dde1b20",
"assets/fonts/MaterialIcons-Regular.otf": "c0ad29d56cfe3890223c02da3c6e0448",
"assets/NOTICES": "984673a3ac5177958ccc59a88a6a55a1",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "33b7d9392238c04c131b6ce224e13711",
"assets/packages/material_design_icons_flutter/lib/fonts/materialdesignicons-webfont.ttf": "3759b2f7a51e83c64a58cfe07b96a8ee",
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
"canvaskit/skwasm_st.js": "9eeb36850f248a8e946442a13aaaa009",
"canvaskit/skwasm_st.js.symbols": "ca49a44a388ecfe66ba43dd851d2b76d",
"canvaskit/skwasm_st.wasm": "56c3973560dfcbf28ce47cebe40f3206",
"favicon.png": "3afa0d4685b06282ee7fe8ea27eeb3f5",
"flutter.js": "83d881c1dbb6d6bcd6b42e274605b69c",
"flutter_bootstrap.js": "1c53f1caba052d6ca76c0cdddaa33319",
"icons/Icon-192.png": "3b48e8981038494643695e323c95ab96",
"icons/Icon-512.png": "773335582f58b475bd773282b5d3bbac",
"icons/Icon-maskable-192.png": "3b48e8981038494643695e323c95ab96",
"icons/Icon-maskable-512.png": "ecc42b32997f10d21f5c0d5783898425",
"index.html": "9024437b1697423e07d695b1b79c1ec6",
"/": "9024437b1697423e07d695b1b79c1ec6",
"main.dart.js": "69ce5773b097acf4fb124258432adb39",
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
