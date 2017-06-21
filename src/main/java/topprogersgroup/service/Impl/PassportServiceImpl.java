package topprogersgroup.service.Impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;
import topprogersgroup.entity.Passport;
import topprogersgroup.entity.UploadImage;
import topprogersgroup.repository.ImageRepository;
import topprogersgroup.repository.PassportRepository;
import topprogersgroup.service.PassportService;

import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.UUID;

@Service
public class PassportServiceImpl implements PassportService {

    @Autowired
    private PassportRepository passportRepository;
    @Autowired
    private ImageRepository imageRepository;

    public void uploadPassportImage(MultipartFile image, Passport passport) {
        final String imageHomePath = System.getProperty("catalina.home") +
                File.separator + "images" + File.separator + "passport" + File.separator;
        String imagePath = imageHomePath + passport.getGuid() + File.separator + passport.getId() +
                File.separator + image.getOriginalFilename();
        try {
            File dir = new File(imagePath);
            dir.getParentFile().mkdirs();
            image.transferTo(dir);
            UploadImage uploadImage = new UploadImage();
            uploadImage.setName(image.getOriginalFilename());
            uploadImage.setPath(imagePath);
            uploadImage.setPassport(null);
            imageRepository.save(uploadImage);
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    @Override
    public Passport save(Passport passport) {
        String guid = UUID.randomUUID().toString();
        passport.setGuid(guid);
        passport.setLast(true);
        UUID uuid = UUID.randomUUID();
        passport.setGuid(uuid);
        return passportRepository.save(passport);
    }

    @Override
    public Passport findOne(Integer id) {
        return passportRepository.findOne(id);
    }

    @Override
    public Passport findByGuid(UUID guid) {
        return passportRepository.findOneByGuidAndIsDeletedAndIsLast(guid,false,true);
    }

    @Override
    public Passport update(Passport passport) {
        Passport passport1 = new Passport();
        passport1.setId(passport.getId());
        passport1 = passportRepository.findOne(passport1.getId());
        passport1.setLast(false);
        passportRepository.save(passport1);
        passport.setLast(false);
        passportRepository.save(passport);
        passport.setId(0);
        passport.setLast(true);
        return passportRepository.save(passport);
    }

    @Override
    public void delete(Passport passport) {
        passport.setLast(false);
        passport.setDeleted(true);
        passportRepository.save(passport);
    }
}
