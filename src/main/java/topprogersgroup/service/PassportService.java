package topprogersgroup.service;

import org.springframework.web.multipart.MultipartFile;
import topprogersgroup.entity.Passport;

public interface PassportService {
    void uploadPassportImage(MultipartFile image, Passport passport);
}
