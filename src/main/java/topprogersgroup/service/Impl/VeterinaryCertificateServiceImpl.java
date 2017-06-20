package topprogersgroup.service.Impl;

import org.springframework.beans.factory.annotation.Autowired;
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

    public VeterinaryCertificate create(VeterinaryCertificate veterinaryCertificate) {
        return veterinaryCertificateRepository.save(veterinaryCertificate);
    }

    public void delete(VeterinaryCertificate veterinaryCertificate) {
        veterinaryCertificate.setDeleted(true);
        veterinaryCertificateRepository.save(veterinaryCertificate);
    }

    public VeterinaryCertificate edit(VeterinaryCertificate veterinaryCertificate) {
        return veterinaryCertificateRepository.save(veterinaryCertificate);
    }

    public VeterinaryCertificate getVeterinaryCertificateListByVeterinaryDocument(VeterinaryDocument veterinaryDocument) {
        return veterinaryCertificateRepository.findByVeterinaryDocumentAndIsDeleted(veterinaryDocument, false);
    }

    public List<VeterinaryCertificate> getVeterinaryCertificateList() {
        return veterinaryCertificateRepository.findAll();
    }
}
