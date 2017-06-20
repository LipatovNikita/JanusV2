package topprogersgroup.service.Impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Service;
import topprogersgroup.entity.CurrentUser;
import topprogersgroup.entity.Role;
import topprogersgroup.service.BidService;
import topprogersgroup.service.CurrentUserService;

@Service
public class CurrentUserServiceImpl implements CurrentUserService {

    @Autowired
    private BidService bidService;

    public boolean canAccessOwnerBids(CurrentUser currentUser, int bidId) {
        return currentUser != null
                && (currentUser.getUser().getOwner().getPet().contains(bidService.findOne(bidId)));
    }

    @Override
    public String getUserEmail() {
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        return auth.getName();
    }
}
