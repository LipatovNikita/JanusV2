package topprogersgroup.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import topprogersgroup.entity.VeterinaryDocument;

@Repository
public interface VeterinaryDocumentRepository extends JpaRepository<VeterinaryDocument, Integer> {

}