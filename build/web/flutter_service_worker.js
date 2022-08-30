'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "assets/AssetManifest.json": "db9c0d2c9a6f068a897d134a4cbb9833",
"assets/assets/code.svg": "9d68e182f13fc2cc89678b0da8f8b27a",
"assets/assets/db.svg": "10333afe21802cb06c2aac4856043f72",
"assets/assets/experience/Equipo_DVR.jpg": "01c2f42e641aec8115c2812eb6298c46",
"assets/assets/experience/Hardware1.jpeg": "c9e960ca5ec2c2f55dcd3b17762184ff",
"assets/assets/experience/Hardware2.jpeg": "6e3f5e9f5c656add11611a7d0238b7a1",
"assets/assets/experience/Hardware3.jpeg": "248433ffda8938da3a9ce625d6e5dfcd",
"assets/assets/experience/PC_Bios1.jpg": "23eae0bfd30761dee598deac9970a666",
"assets/assets/experience/PC_Bios2.jpg": "8487034fb47a4c50984601fa99db09cc",
"assets/assets/experience/PC_Bisagra1.jpg": "d8707b761ece2e53274376665f215d75",
"assets/assets/experience/PC_Bisagra2.jpg": "1a8642aaa18d5552ef629d9fd5e6c054",
"assets/assets/experience/PC_Bisagra3.jpg": "5fb8c60239999446eb68200e05469af1",
"assets/assets/experience/PC_Caddy1.jpg": "a41c5702918c1bb161bf008e36f9f3c8",
"assets/assets/experience/PC_Caddy2.jpg": "e3b5b94c514d3354f748d4ec29a66f16",
"assets/assets/experience/PC_Escritorio2.jpg": "193d85d3693e5cd1fca812d69c55689b",
"assets/assets/experience/PC_Escritorio3.jpg": "807bd44a602106aec98263efd7897b8c",
"assets/assets/experience/PC_Escritorio4.jpg": "b9e38443fe41bda8bf15b7b11644faed",
"assets/assets/experience/PC_Portatil10.jpg": "3992c0492fb4cabcfd41a803df48327f",
"assets/assets/experience/PC_Portatil16.jpg": "8042298f9534ab9df192476e2246246f",
"assets/assets/experience/PC_Portatil17.jpg": "b754eaf38653489cf5ddc82326c2af52",
"assets/assets/experience/PC_Portatil19.jpg": "727f3abc04d39c205f70abb32e1d29df",
"assets/assets/experience/PC_Portatil20.jpg": "1eee5035e40fb5572679702064902ba0",
"assets/assets/experience/PC_Portatil3.jpg": "9dd4887ec7bc6aa101e7e45763490d41",
"assets/assets/experience/PC_Portatil4.jpg": "2f2c73fa1eb668265aea5816d3f18e60",
"assets/assets/experience/PC_Portatil5.jpg": "bbf06dc986b266f476be4ae1b8a4fa28",
"assets/assets/experience/PC_Portatil7.jpg": "33b5630b623d0c6c9a4f1e988ef7c9d7",
"assets/assets/experience/PC_Portatil8.jpg": "7359686dbffdbe63b18c0e81aaa67123",
"assets/assets/experience/PC_Portatil9.jpg": "7a4ba2db2a5148507f11237bc2177bd0",
"assets/assets/idea.svg": "82cfa5b92878cc7ab0802090bf4305a5",
"assets/assets/img1.jpg": "23a52f666f561a1fbd9e25ddff3a4393",
"assets/assets/img2.jpg": "6621afa81f07348c9bb6a1a590cc83cb",
"assets/assets/Isologotipo.svg": "8a245199e2cfedd544bdd8b37010bc15",
"assets/assets/IsologotipoBlanco.svg": "9800cc479c3fa9c80b795aa43f1f99a2",
"assets/assets/love.svg": "ec7f5047d24aa34bd31c79eee3b62022",
"assets/assets/pc.svg": "b6c30e061c1ed3395532c69f75ec84f5",
"assets/assets/placeholder.png": "12d0fc4905551fb8949f19bd771a932d",
"assets/assets/red.svg": "f3bed168116a318465665eef277f4f1b",
"assets/assets/target.svg": "444e74d15f486daa0ba681522c0893eb",
"assets/FontManifest.json": "1b1e7812d9eb9f666db8444d7dde1b20",
"assets/fonts/MaterialIcons-Regular.otf": "95db9098c58fd6db106f1116bae85a0b",
"assets/NOTICES": "ca449c7bf4763eba1797406b402a637d",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "6d342eb68f170c97609e9da345464e5e",
"assets/packages/material_design_icons_flutter/lib/fonts/materialdesignicons-webfont.ttf": "e9f2f143310604845f8aa26c42ad5f55",
"canvaskit/canvaskit.js": "c2b4e5f3d7a3d82aed024e7249a78487",
"canvaskit/canvaskit.wasm": "4b83d89d9fecbea8ca46f2f760c5a9ba",
"canvaskit/profiling/canvaskit.js": "ae2949af4efc61d28a4a80fffa1db900",
"canvaskit/profiling/canvaskit.wasm": "95e736ab31147d1b2c7b25f11d4c32cd",
"favicon.png": "3afa0d4685b06282ee7fe8ea27eeb3f5",
"flutter.js": "eb2682e33f25cd8f1fc59011497c35f8",
"icons/Icon-192.png": "3b48e8981038494643695e323c95ab96",
"icons/Icon-512.png": "773335582f58b475bd773282b5d3bbac",
"icons/Icon-maskable-192.png": "3b48e8981038494643695e323c95ab96",
"icons/Icon-maskable-512.png": "ecc42b32997f10d21f5c0d5783898425",
"index.html": "eef1c66feb87f11ac7e557c44d72b385",
"/": "eef1c66feb87f11ac7e557c44d72b385",
"main.dart.js": "46939782c3323efb8d7b567bf8e622d2",
"manifest.json": "3487e65e20c04e6c610b6d73deaf1e7d",
"version.json": "d485f6e363fc7127c8072fa1c0625eb2"
};

// The application shell files that are downloaded before a service worker can
// start.
const CORE = [
  "main.dart.js",
"index.html",
"assets/NOTICES",
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
        // lazily populate the cache.
        return response || fetch(event.request).then((response) => {
          cache.put(event.request, response.clone());
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
