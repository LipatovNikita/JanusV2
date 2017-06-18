package topprogersgroup.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import topprogersgroup.entity.VeterinaryCertificate;
import topprogersgroup.entity.VeterinaryDocument;

@Repository
public interface VeterinaryCertificateRepository extends JpaRepository<VeterinaryCertificate, Integer> {
    VeterinaryCertificate findByVeterinaryDocumentAndIsDeleted(VeterinaryDocument veterinaryDocument, boolean isDeleted);
}
