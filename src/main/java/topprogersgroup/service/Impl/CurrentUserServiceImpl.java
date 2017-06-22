package topprogersgroup.service.Impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Service;
import topprogersgroup.entity.Bid;
import topprogersgroup.entity.CurrentUser;
import topprogersgroup.entity.Pet;
import topprogersgroup.entity.Role;
import topprogersgroup.service.BidService;
import topprogersgroup.service.CurrentUserService;
import topprogersgroup.service.PetService;

import java.util.List;

@Service
public class CurrentUserServiceImpl implements CurrentUserService {

    @Autowired
    private BidService bidService;

    @Autowired
    private PetService petService;

    public boolean canAccessOwnerBids(CurrentUser currentUser, int bidId) {
        return currentUser != null
                && (checkContainsBid(currentUser, bidId));
    }

    public boolean checkContainsBid(CurrentUser currentUser, int bidId) {
        List<Pet> pets = currentUser.getUser().getOwner().getPet();
        Bid bid = bidService.findOne(bidId);
        for (Pet pet : pets) {
            if (pet.getBids().contains(bid)) return true;
        }
        return false;
    }

    public boolean canAccessOwnerPets(CurrentUser currentUser, int petId) {
        boolean flag;
        List<Pet> pets = currentUser.getUser().getOwner().getPet();
        Pet pet = petService.findOne(petId);
        System.out.print("");
        if (currentUser.getUser().getOwner().getPet().contains(petService.findOne(petId))) {
            flag = true;
        }
        return currentUser != null
                && (currentUser.getUser().getOwner().getPet().contains(petService.findOne(petId)));
    }

    @Override
    public String getUserEmail() {
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        return auth.getName();
    }
}
