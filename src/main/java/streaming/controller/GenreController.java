/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package streaming.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.SpringApplicationConfiguration;
import org.springframework.stereotype.Controller;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import streaming.entity.Genre;
import streaming.service.GenreCrudService;
import streaming.spring.SpringConfig;

/**
 *
 * @author admin
 */
//@RunWith(SpringJUnit4ClassRunner.class)
//@SpringApplicationConfiguration(classes = SpringConfig.class)
@Controller
public class GenreController {

    @Autowired
    private GenreCrudService serv;

    /*exemple avec plusieurs variable val
    @RequestMapping(value = "/supprimer_genre/{val1}/{val2}", method = RequestMethod.GET)
    public String suprimer (@PathVariable("val2") long idGenreDel, @PathVariable("val2") String Nom) {
     */
 /*@RequestMapping(value = "/ajouter_genre/", method = RequestMethod.POST)
    public String ajouterPOST(String adtxt) {
         public String modifier(@PathVariable("val2") long idm, Model model) {
        //recup genre
        Genre genre = serv.save(idm);
        //prep de l'attribut a destination de la jsp
        model.addAttribute("genradd", genre);
        return "redirect:/liste_genre";
    }
     */
    @RequestMapping(value = "/ajouter_genre/", method = RequestMethod.GET)
    public String ajouterGET(Model m) {
        m.addAttribute("newgenre", new Genre());
        return "ajouter_genre.jsp";
    }

    @RequestMapping(value = "/ajouter_genre/", method = RequestMethod.POST)
    public String ajouterPOST(@ModelAttribute("newgenre") Genre genre) { //genre.setNom(newgenre), on recupere la valeur negenre et on la set via genre.setNom
        serv.save(genre);
        return "redirect:/lister_genre";
    }

    @RequestMapping(value = "/supprimer_genre/{val}", method = RequestMethod.GET)
    public String suprimer(@PathVariable("val") long idGenreDel) {
        serv.delete(idGenreDel);
        return "redirect:/lister_genre";
    }

    @RequestMapping(value = {"/lister_genre", "/"}, method = RequestMethod.GET) //value pour indiquer la route
    public String lister(Model m) {
        m.addAttribute("nomdugenre", serv.findAllByOrderByNomAsc());
        return "genre_lister.jsp"; // maniere qui pointe vers une jsp
    }

    @RequestMapping(value = "/modifier_genre/{val2}", method = RequestMethod.GET)
    public String modifier(@PathVariable("val2") long idm, Model model) {
        //recup genre
        Genre genre = serv.findOne(idm);
        //prep de l'attribut a destination de la jsp
        model.addAttribute("genract", genre);

        return "modifier_genre.jsp";
    }

    @RequestMapping(value = "/modifier_genre", method = RequestMethod.POST)
    public String modifierPOST(@ModelAttribute("genreact") Genre genre) {
        serv.save(genre);
        return "redirect:/lister_genre";

    }

    /*@RequestMapping(value = "/homepage", method = RequestMethod.GET)
    public String affichehome() {
        return "redirect:/homepage";
    }
     */
}
