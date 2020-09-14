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
    public String save(@RequestBody MultiValueMap<String, String> phepTinh, Model model) {
        int ketqua=0;
        model.addAttribute("phepTinh",phepTinh);
        if(phepTinh.get("plus")!=null){
            ketqua=  Integer.parseInt(phepTinh.get("first").get(0))+Integer.parseInt(phepTinh.get("second").get(0));
        }
        else if(phepTinh.get("minus")!=null){
            ketqua=  Integer.parseInt(phepTinh.get("first").get(0))-Integer.parseInt(phepTinh.get("second").get(0));
        }
        else if(phepTinh.get("multi")!=null){
            ketqua=  Integer.parseInt(phepTinh.get("first").get(0))*Integer.parseInt(phepTinh.get("second").get(0));
        }
        else if(phepTinh.get("divide")!=null){
            ketqua=  Integer.parseInt(phepTinh.get("first").get(0))/Integer.parseInt(phepTinh.get("second").get(0));
        }
        model.addAttribute("ketqua",ketqua);
        return "save";
    }
}