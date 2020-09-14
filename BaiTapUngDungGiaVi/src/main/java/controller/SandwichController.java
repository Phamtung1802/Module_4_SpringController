package controller;

import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.MultiValueMap;
import org.springframework.web.bind.annotation.*;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

@Controller
public class SandwichController {
    @RequestMapping(value="/save", method = RequestMethod.POST, consumes = MediaType.APPLICATION_FORM_URLENCODED_VALUE)
    public String save(@RequestBody MultiValueMap<String, String> condiment, Model model) {
        model.addAttribute("condiment",condiment);
        for(int i=0; i<condiment.size(); i++){
            System.out.println("+1");
        }
        return "save";
    }
}