package topprogersgroup.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import topprogersgroup.entity.Bid;
import topprogersgroup.entity.VeterinaryDocument;
import topprogersgroup.service.VeterinaryDocumentService;

import javax.validation.Valid;
import java.util.List;
import java.util.ArrayList;

/**
 * Created by VP on 16.06.2017.
 */

@Controller
@RequestMapping("/docs")
public class DocumentController {

//    @Autowired
//    private VeterinaryDocumentService veterinaryDocService;


    @PreAuthorize("hasAuthority('EMPLOYEE')")
    @RequestMapping(value = {"/{numberPage}"}, method = RequestMethod.GET)
    public String all(Model model,
                      @PathVariable Integer numberPage){
        Pageable pageable = new PageRequest(numberPage,20);
        //todo: Доделать достование заявок
//        List<Bid> bidList = bidService.getBidPagingList(pageable);
//        model.addAttribute("bidList", bidList);
        model.addAttribute("numberPage",numberPage);
        return "document/docs";
    }

    @PreAuthorize("hasAuthority('EMPLOYEE')")
    @RequestMapping(value = {"/create/{idBid}"}, method = RequestMethod.GET)
    public String createVeterinaryDocument(Model model,
                                  @PathVariable Integer idBid){
//        Bid bid = bidService.getBidById(idBid);
        VeterinaryDocument vetDoc = new VeterinaryDocument();
//        model.addAttribute("bid", bid);
        model.addAttribute("vetDoc", vetDoc);
//        model.addAttribute("petList", bid.getPets());
//        model.addAttribute("route", bid.getRoute());
        return "document/vetDoc";
    }

    @PreAuthorize("hasAuthority('EMPLOYEE')")
    @RequestMapping(value = {"/create/{idBid}"}, method = RequestMethod.POST)
    public String createVeterinaryDocument(Model model,
                                           @ModelAttribute("bid")Bid bid,
                                           @Valid @ModelAttribute("vetDoc") VeterinaryDocument vetDoc,
                                           BindingResult bindingVetDocResult){
        if(bindingVetDocResult.hasErrors()){
            return "document/vetDoc";
        }
        //todo: Дописать сравнение
        if(bid.getStatus().equals("")){

        }
        vetDoc.setBid(bid);
//        vetDocService.save(vetDoc);
        return String.format("forward:/preview/{0}",vetDoc.getId());
    }

    @PreAuthorize("hasAuthority('EMPLOYEE')")
    @RequestMapping(value = {"/preview/{idDoc}"}, method = RequestMethod.GET)
    public String previewVeterinaryDocument(Model model,
                                            @PathVariable Integer idDoc){
//        VeterinaryDocument vd = veterinaryDocService.getVeterinaryDocumentById(idDoc);
//        model.addAttribute("veterinaryDocument", vd);
        //todo: Сделать страницу
        return "document/preview";
    }

    @PreAuthorize("hasAuthority('EMPLOYEE')")
    @RequestMapping(value = {"/preview/send/{idDoc}"}, method = RequestMethod.GET)
    public String sendDocumentToForeignCountry(@PathVariable Integer idDoc){
        //todo: Дописать метод конвертирующий в западный сертификат наш документ
//        VeterinaryDocument document =

        return "";
    }

//    return "redirect:/books"; вернул http://localhost:8080/books?
//            return "jsp/books/booksList"; вернул http://localhost:8080/request-list?
//            return "forward:/books"; вернул http://localhost:8080/request-list?


}
