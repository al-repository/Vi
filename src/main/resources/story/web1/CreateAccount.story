Description: Walmart registration and cart check

Scenario: Create account
Given I am on the main application page



Scenario: Search by product via search box
When I enter `progresso soup gluten free` in field located `By.xpath(//*[@id="global-search-input"])`
When I click on element located `By.xpath(//*[@id="global-search-submit"])`

Scenario: Open product from previous step
When I click on element located `By.xpath(//*[@id="searchProductResult"]/ul/li[1]/div/div[2]/div[5]/div/a/span)`

Scenario: Add product to cart from previous step
When I click on element located `By.xpath(//*[@id="add-on-atc-container"]/div[1]/section/div[1]/div[3]/button)`

Scenario: Navigate to cart
When I click on element located `By.xpath(//*[@id="hf-cart"]/span/span/span[1])`
Then a element with the name '$elementName' and text '$text' exists

Then the text 'Your cart' exists
