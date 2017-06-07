package topprogersgroup.service.Impl;

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
}
