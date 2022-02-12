package com.amdocs.dio;

import org.junit.runner.RunWith;

import io.cucumber.junit.Cucumber;
import io.cucumber.junit.CucumberOptions;

@RunWith(Cucumber.class)
@CucumberOptions(plugin = {"html:target/cucumber.html"})//{"pretty"})
public class Runner {

}
