/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package streaming.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 *
 * @author admin
 */
@Controller
public class HomeController {
    @RequestMapping(value = "/homepage", method = RequestMethod.GET) //value our indiquer la route
    public String vershome(Model m) {
        m.addAttribute("titre", "Texte d'exemple pour le titre, intro etc...");
        return "home_index.jsp"; // maniere qui pointe vers une jsp
    }
}
