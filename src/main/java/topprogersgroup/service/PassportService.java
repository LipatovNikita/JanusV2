package topprogersgroup.service;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;
import org.springframework.web.multipart.MultipartFile;
import topprogersgroup.entity.Passport;

@Repository
public interface PassportService {
    void uploadPassportImage(MultipartFile image, Passport passport);
}
