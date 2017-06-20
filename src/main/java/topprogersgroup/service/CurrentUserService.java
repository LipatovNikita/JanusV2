package topprogersgroup.service;


import topprogersgroup.entity.CurrentUser;

public interface CurrentUserService {
    boolean canAccessUser(CurrentUser currentUser, Long userId);
    String getUserEmail();
}
