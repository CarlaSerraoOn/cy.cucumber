/// <reference types="cypress" />

import { Given, When, Then } from "@badeball/cypress-cucumber-preprocessor";
import home_page from "../pages/home_page";
import register_page from "../pages/register_page";

Given("I am on register screen", () => {
  home_page.accessRegister();
});

Given("I fill nameL", () => {
  register_page.fillName("Carla Oliveira");
});

Given("I fill e-mail {string}", (email) => {
  register_page.fillEmail(email);
});

Given("I fill password {string}", (password) => {
  register_page.fillPassword(password);
});

Given("I fill my datas of register", () => {
  register_page.fillName("Carla Oliveira");
  register_page.fillEmail("carla@gmail.com");
  register_page.fillPassword("123456");
});

When("I click on register", () => {
  register_page.doRegister();
});

Then('I see the message {string} on register', (message) => {
  register_page.checkErrorMessage(message);
});

Then("I see success message on register", () => {
  register_page.checkSuccessMessage("Carla Oliveira");
});
