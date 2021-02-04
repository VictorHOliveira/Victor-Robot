*** Settings ***
Resource    ../../../Config/Config.robot

*** Variables ***
${FL_Titulo}                    XPath://div[1]//div[1]/div/div[1]/div[1]/div/h1
${FL_Texto}                     XPath://*[@id="post-4816"]/div/div[1]/div/div[1]/div/div[1]/div[2]
${FL_Btn_ViewCourses}           XPath://div[3]/a[contains(text(),'View')]
${FL_Menu_Courses}              XPath://*[@id="menu-home-page-menu"]/li[1]/a
${FL_Menu_SeleniumJava}         XPath://*[@id="menu-home-page-menu"]/li[2]/a
${FL_Menu_SeleniumCSharp}       XPath://*[@id="menu-home-page-menu"]/li[3]/a
${FL_Menu_SeleniumResources}    XPath://*[@id="menu-home-page-menu"]/li[4]/a
${FL_Menu_AutoExercises}        XPath://*[@id="menu-home-page-menu"]/li[5]/a
${FL_Menu_Blog}                 XPath://*[@id="menu-home-page-menu"]/li[6]/a
${FL_Lupa}                      XPath://div/div/div[2]/button
${FL_Btn_FB}                    XPath://div[2]/div[1]/a/span/span/span/span
${FL_Btn_Twt}                   XPath://div[2]/div[2]/a/span/span/span/span
${FL_Btn_LI}                    XPath://div[2]/div[3]/a/span/span/span/span

*** Keywords ***
Dado que eu acessei a URL para iniciar o teste
    [Arguments]                 ${URL}
    Abrir navegador             ${URL}

Então eu realizo a validação de que todos os textos estão corretos
    Element Text Should Be      ${FL_Titulo}                    Learn to Code Websites, Apps & Games
    Element Text Should Be      ${FL_Texto}                     Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Sed molestie, velit ut eleifend sollicitudin, neque orci tempor nulla, id sagittis nisi ante nec arcu.
    Element Text Should Be      ${FL_Btn_ViewCourses}           VIEW COURSES
    Element Text Should Be      ${FL_Menu_Courses}              Courses
    Element Text Should Be      ${FL_Menu_SeleniumJava}         Selenium Java
    Element Text Should Be      ${FL_Menu_SeleniumCSharp}       Selenium C#
    Element Text Should Be      ${FL_Menu_SeleniumResources}    Selenium Resources
    Element Text Should Be      ${FL_Menu_AutoExercises}        Automation Exercises
    Element Text Should Be      ${FL_Menu_Blog}                 Blog
    Sleep                       2s
    Fechar navegador