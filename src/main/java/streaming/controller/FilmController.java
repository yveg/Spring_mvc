/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package streaming.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import streaming.entity.Film;
import streaming.service.FilmCrudService;
import streaming.service.GenreCrudService;

/**
 *
 * @author tom
 */
@Controller
public class FilmController {

    @Autowired
    private FilmCrudService serv;
    
    @Autowired
    private GenreCrudService gserv;

    @RequestMapping(value = "/ajouter_film/", method = RequestMethod.GET)
    public String ajouterfGET(Model m) {
        m.addAttribute("newfilm", new Film());
        m.addAttribute("genres", gserv.findAll());
        return "ajouter_film.jsp";
    }

    @RequestMapping(value = "/ajouter_film", method = RequestMethod.POST)
    public String ajouterfPOST(@ModelAttribute("newfilm") Film f) { //genre.setNom(newgenre), on recupere la valeur negenre et on la set via genre.setNom
        serv.save(f);
        return "redirect:/lister_film";
    }

    @RequestMapping(value = {"/lister_film"}, method = RequestMethod.GET)
    public String listerf(Model m) {
        m.addAttribute("nomdufilm", serv.findAllByOrderByTitreAsc());
        return "film_lister.jsp";
    }

    @RequestMapping(value = "/modifier_film/{val2}", method = RequestMethod.GET)
    public String modifierfGET(@PathVariable("val2") long idm, Model model) {
        //recup film
        Film f = serv.findOne(idm);
        //prep de l'attribut a destination de la jsp
        model.addAttribute("filmo", f);
        return "modifier_film.jsp";
    }

    @RequestMapping(value = "/modifier_film", method = RequestMethod.POST)
    public String modifierfPOST(@ModelAttribute("genreact") Film f) {
        serv.save(f);
        return "redirect:/lister_film";

    }

    @RequestMapping(value = "/supprimer_film/{val}", method = RequestMethod.GET)
    public String suprimerfGET(@PathVariable("val") long idFilmDel) {
        serv.delete(idFilmDel);
        return "redirect:/lister_film";
    }
}
