package topprogersgroup.service;

import org.springframework.data.domain.Pageable;
import topprogersgroup.entity.VeterinaryDocument;

import java.util.List;

public interface VeterinaryDocumentService {
    void add(VeterinaryDocument veterinaryDocument);
    List<VeterinaryDocument> getVeterinaryDocumentPagingList(Pageable pageable);
    VeterinaryDocument getVeterinaryDocumentById(int id);
    void delete(VeterinaryDocument veterinaryDocument);
}
