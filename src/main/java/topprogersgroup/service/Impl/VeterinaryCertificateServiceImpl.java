package topprogersgroup.service.Impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import topprogersgroup.entity.VeterinaryCertificate;
import topprogersgroup.entity.VeterinaryDocument;
import topprogersgroup.repository.VeterinaryCertificateRepository;
import topprogersgroup.service.VeterinaryCertificateService;

import java.util.List;

@Service
public class VeterinaryCertificateServiceImpl implements VeterinaryCertificateService {

    @Autowired
    private VeterinaryCertificateRepository veterinaryCertificateRepository;

    public void create(VeterinaryCertificate veterinaryCertificate) {
        veterinaryCertificateRepository.save(veterinaryCertificate);
    }

    public void delete(VeterinaryCertificate veterinaryCertificate) {
        veterinaryCertificate.setDeleted(true);
        veterinaryCertificateRepository.save(veterinaryCertificate);
    }

    public void edit(VeterinaryCertificate veterinaryCertificate) {
        veterinaryCertificateRepository.save(veterinaryCertificate);
    }

    public VeterinaryCertificate getVeterinaryCertificateListByVeterinaryDocument(VeterinaryDocument veterinaryDocument) {
        return veterinaryCertificateRepository.findByVeterinaryDocumentAndIsDeleted(veterinaryDocument, false);
    }

    public List<VeterinaryCertificate> getVeterinaryCertificateList() {
        return veterinaryCertificateRepository.findAll();
    }

    @Override
    public List<VeterinaryCertificate> findForPageByStatusAndSortDate(String status, boolean isDeleted, Pageable pageable) {
        return veterinaryCertificateRepository.findByStatusAndIsDeletedOrderByIssueDate(status,isDeleted,pageable);
    }
}
