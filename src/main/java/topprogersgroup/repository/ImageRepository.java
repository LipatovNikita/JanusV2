package topprogersgroup.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import topprogersgroup.entity.UploadImage;

public interface ImageRepository extends JpaRepository<UploadImage, Integer> {
}
