package topprogersgroup.service.Impl;

import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Service;
import topprogersgroup.entity.CurrentUser;
import topprogersgroup.entity.Role;
import topprogersgroup.service.CurrentUserService;

@Service
public class CurrentUserServiceImpl implements CurrentUserService {

    public boolean canAccessUser(CurrentUser currentUser, Long userId) {
        return currentUser != null
                && (currentUser.getRole() == Role.ADMIN || currentUser.getId() == userId);
    }

    @Override
    public String getUserEmail() {
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        return auth.getName();
    }
}
