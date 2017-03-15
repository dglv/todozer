package ru.dglv.todozer.web.controller;

import org.springframework.web.servlet.ModelAndView;

public interface PersonController
{
    /*String loginRedirect();*/
    ModelAndView login(ModelAndView modelAndView);
    ModelAndView login(String username, String password, ModelAndView modelAndView);
    ModelAndView signup(ModelAndView modelAndView);
    ModelAndView signup(String username, String password, String email, String name, Integer age, ModelAndView modelAndView);
}
