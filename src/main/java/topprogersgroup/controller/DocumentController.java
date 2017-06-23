package topprogersgroup.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import topprogersgroup.entity.Bid;
import topprogersgroup.entity.Owner;
import topprogersgroup.entity.SpecialNotes;
import topprogersgroup.entity.VeterinaryDocument;
import topprogersgroup.service.BidService;
import topprogersgroup.service.VeterinaryDocumentService;

import javax.validation.Valid;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

/**
 * Created by VP on 16.06.2017.
 */

@Controller
@RequestMapping("/docs")
public class DocumentController {

    //Возможные статусы REJECTED, CREATED, PROCESSED, ACCEPTED
    private final String REJECTED = "REJECTED";
    private final String CREATED = "CREATED";
    private final String PROCESSED = "PROCESSED";
    private final String ACCEPTED = "ACCEPTED";

    @Autowired
    private VeterinaryDocumentService veterinaryDocService;
    @Autowired
    private BidService bidService;

    @PreAuthorize("hasAuthority('EMPLOYEE')")
    @RequestMapping(value = {"","/home"}, method = RequestMethod.GET)
    public String home(Model model){
        return "document/home";
    }

    //Вывод всех заявок в состоянии ОБРАБАТЫВАЕТСЯ
    @PreAuthorize("hasAuthority('EMPLOYEE')")
    @RequestMapping(value = {"/{numberPage}"}, method = RequestMethod.GET)
    public String all(Model model,
                      @PathVariable Integer numberPage){
        Pageable pageable = new PageRequest(numberPage,20);
        List<Bid> bidList = bidService.findForPageByStatusAndSortDate(PROCESSED,false, pageable);
        model.addAttribute("bidList", bidList);
        model.addAttribute("numberPage",numberPage);
        return "document/bids";
    }

//    //Поиск заявок
//    @PreAuthorize("hasAuthority('EMPLOYEE')")
//    @RequestMapping(value = {"/find/bids"}, method = RequestMethod.GET)
//    public String findBid(Model model){
//        String ownerDocNumber = "";
//        model.addAttribute("ownerDocNumber", ownerDocNumber);
//        return "document/findbids";
//    }


    //Поиск заявок по номеру документа Владельца(находятся на странице - findbids)
    @PreAuthorize("hasAuthority('EMPLOYEE')")
    @RequestMapping(value = {"/find/bids"}, method = RequestMethod.POST)
    public String findBid(Model model,
                          @RequestParam String ownerDocNumber){
        Set<Bid> bidList = bidService.findByDocumentNumberAndStatus(PROCESSED,ownerDocNumber,false);
        model.addAttribute("bidList",bidList);
        return "document/bids";
    }

    //    //Поиск заявок
//    @PreAuthorize("hasAuthority('EMPLOYEE')")
//    @RequestMapping(value = {"/find/bids"}, method = RequestMethod.GET)
//    public String findAcceptedBid(Model model){
//        String ownerDocNumber = "";
//        model.addAttribute("ownerDocNumber", ownerDocNumber);
//        return "document/findbids";
//    }

    //Поиск принятых заявок по номеру документа Владельца(находятся на странице - findacceptedbids)
    @PreAuthorize("hasAuthority('EMPLOYEE')")
    @RequestMapping(value = {"/find/acceptedbids"}, method = RequestMethod.POST)
    public String findAcceptedBid(Model model,
                                  @RequestParam String ownerDocNumber){
        Set<Bid> bidList = bidService.findByDocumentNumberAndStatus(ACCEPTED,ownerDocNumber,false);
        model.addAttribute("bidList",bidList);
        return "document/bids";
    }

    //Выбранная заявка
    @PreAuthorize("hasAuthority('EMPLOYEE')")
    @RequestMapping(value = {"/bid/{idBid}"}, method = RequestMethod.GET)
    public String processBid(Model model,
                             @PathVariable Integer idBid,
                             @ModelAttribute("numberPage")Integer numberPage){
        Bid bid = bidService.findOne(idBid);
        if(bid.getStatus().equals(PROCESSED)){
            model.addAttribute("bid", bid);
            model.addAttribute("petList", bid.getPets());
            model.addAttribute("route", bid.getRoute());
            model.addAttribute("numberPage",numberPage);
            return "document/bid";//Страница с заявкой
        }
       return String.format("redirect:/docs/%d",numberPage);
    }

    //Сохранения решения насчет заявки(ОТКЛОНЕНА или ПРИНЯТА)
    @PreAuthorize("hasAuthority('EMPLOYEE')")
    @RequestMapping(value = {"/bid/{idBid}"}, method = RequestMethod.POST)
    public String processBid(Model model,
                             @Valid @ModelAttribute("bid")Bid bid,
                             BindingResult bindingResult,
                             @ModelAttribute("numberPage")Integer numberPage){
        if(bindingResult.hasErrors()){
            return "document/bid";
        }
        if(bid.getStatus().equals(REJECTED) ||
                bid.getStatus().equals(ACCEPTED)){
            bidService.save(bid);
        }
        return String.format("redirect:docs/%d",numberPage);
    }

    @PreAuthorize("hasAuthority('EMPLOYEE')")
    @RequestMapping(value = {"/accepted/page/{numberPage}"}, method = RequestMethod.GET)
    public String getAcceptedBidPage(Model model,
                                     @ModelAttribute("numberPage")Integer numberPage){
        Pageable pageable = new PageRequest(numberPage,20);
//        todo:Сделано - Должны выводиться страницы в статусе ПРИНЯТЫ и отсортированы по дате с конца
        List<Bid> bidList = bidService.findForPageByStatusAndSortDate(ACCEPTED,false,pageable);
        model.addAttribute("bidList", bidList);
        model.addAttribute("numberPage",numberPage);
        return "document/acceptedbids";
    }

    @PreAuthorize("hasAuthority('EMPLOYEE')")
    @RequestMapping(value = {"/accepted/bid/{idBid}"}, method = RequestMethod.GET)
    public String createVetDocForAcceptedBid(Model model,
                                             @PathVariable Integer idBid,
                                             @ModelAttribute("numberPage")Integer numberPage){
        Bid bid = bidService.findOne(idBid);
        if(bid.getStatus().equals(ACCEPTED)){
            VeterinaryDocument vetDoc = new VeterinaryDocument();
            vetDoc.setBid(bid);
            HashSet<SpecialNotes> notesSet = new HashSet<>();
            notesSet.add(new SpecialNotes());
            vetDoc.setSpecialNotes(notesSet);
//            todo: Таня допиши, сюда что еще нужно для формирования ВетДока, может массив СпецОтметок
            model.addAttribute("vetDoc",vetDoc);
            model.addAttribute("bid", bid);
            model.addAttribute("numberPage",numberPage);
            return "document/vetdoc";
        }
        return String.format("redirect:/docs/accepted/page/%d",numberPage);
    }

    @PreAuthorize("hasAuthority('EMPLOYEE')")
    @RequestMapping(value = {"/accepted/bid/{idBid}"}, method = RequestMethod.POST)
    public String createVetDocForAcceptedBid(Model model,
                                             @PathVariable Integer idBid,
                                             @ModelAttribute("bid")Bid bid,
                                             @ModelAttribute("vetDoc") VeterinaryDocument vetDoc,
                                             BindingResult bindingVetDocResult,
                                             @ModelAttribute("numberPage")Integer numberPage){
        if(bindingVetDocResult.hasErrors()){
            return "document/vetdoc";
        }
        vetDoc.setStatus(CREATED);

//        todo: Таня тоже для тебя прими что нужно в конроллере, но не возвращаемые страницы не изменяй
        return String.format("redirect:/docs/accepted/page/%d",numberPage);
    }

    @PreAuthorize("hasAuthority('EMPLOYEE')")
    @RequestMapping(value = {"/vet/{idDoc}"}, method = RequestMethod.GET)
    public String previewVeterinaryDocument(Model model,
                                            @PathVariable Integer idDoc){
        VeterinaryDocument vetDoc = veterinaryDocService.getVeterinaryDocumentById(idDoc);
        model.addAttribute("vetDoc", vetDoc);
        //todo: Сделать страницу
        return "document/preview";
    }

    @PreAuthorize("hasAuthority('EMPLOYEE')")
    @RequestMapping(value = {"/vet/list/{numberPage}"}, method = RequestMethod.GET)
    public String getVeterinaryDocumentList(Model model,
                                            @PathVariable Integer numberPage){
        Pageable pageable = new PageRequest(numberPage,20);
        List<VeterinaryDocument> vetDoc = veterinaryDocService.getAllVeterinaryDocumentPagingList(pageable);
        model.addAttribute("vetDoc", vetDoc);
        //todo: Сделать страницу
        return "document/preview";
    }

    @PreAuthorize("hasAuthority('EMPLOYEE')")
    @RequestMapping(value = {"/vet/{idDoc}/send"}, method = RequestMethod.GET)
    public String sendDocumentToForeignCountry(@PathVariable Integer idDoc){
        VeterinaryDocument vetDoc = veterinaryDocService.getVeterinaryDocumentById(idDoc);
        //todo: Дописать метод конвертирующий в западный сертификат наш документ
//        VeterinaryDocument document =

        return "";
    }

    //todo: Нужны методы для обработки полученых статусов и поиска

//    return "redirect:/books"; вернул http://localhost:8080/books?
//            return "jsp/books/booksList"; вернул http://localhost:8080/request-list?
//            return "forward:/books"; вернул http://localhost:8080/request-list?


}
