const { Builder, By } = require('selenium-webdriver');

async function test() {
    let driver = await new Builder().forBrowser('chrome').build();

    await driver.get('https://www.google.com');

    console.log(await driver.getTitle());

    await driver.quit();
}

test();