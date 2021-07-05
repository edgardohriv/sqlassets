import { enableProdMode } from '@angular/core';
import { platformBrowserDynamic } from '@angular/platform-browser-dynamic';

import { AppModule } from './app/app.module';
import { environment } from './environments/environment';

export function getBaseUrl() {
  return document.getElementsByTagName('base')[0].href;
}

const providers = [
  { provide: 'BASE_URL', useFactory: getBaseUrl, deps: [] }
];

if (environment.production) {
  enableProdMode();
}


platformBrowserDynamic(providers).bootstrapModule(AppModule)
  .catch(err => console.log(err));
/* The next code line is used to fix the next issue :
 * "TimeoutException: The Angular CLI process did not start listening for requests
 * within the timeout period of 0 seconds "
 * */

//export { renderModule, renderModuleFactory } from '@angular/platform-server';

/* in addition to comment the aforementioned line we've to do the next in angular json
   In  angular.json, set
  "progress": true,
*/
